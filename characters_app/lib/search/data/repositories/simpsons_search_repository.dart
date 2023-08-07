import 'dart:convert';

import 'package:characters_app/search/data/factories/result_factory.dart';
import 'package:characters_app/search/data/models/result.dart';
import 'package:characters_app/search/domain/models/exceptions.dart';
import 'package:characters_app/search/domain/models/result.dart' as domain_result;
import 'package:characters_app/search/domain/repositories/search_repository.dart';
import 'package:dio/dio.dart';

/// A search repository for "The Wire" characters
class TheSimpsonsSearchRepository implements SearchRepository {
  /// construct the wire repository
  TheSimpsonsSearchRepository({Dio? client})
      : _client = client ??
            Dio(
              BaseOptions(
                responseType: ResponseType.plain,
              ),
            );

  final Dio _client;

  static final _fallback = Uri(
    scheme: 'http',
    host: 'api.duckduckgo.com',
    queryParameters: {
      'q': 'the simpsons characters',
      'format': 'json',
    },
  );

  /// Since the data is going to be the same every time, not paginated,
  /// we can store it to increase the performance.
  Result? _data;

  @override
  Future<Iterable<domain_result.Result>> search(String query) async {
    if (_data == null) {
      await _load();
    }

    return _data!.relatedTopics
        .where(
          (topic) => topic.text.contains(query),
        )
        .map(
          ResultFactory.fromData,
        );
  }

  Future<void> _load() async {
    try {
      // submit the request
      final response = await _client.getUri(_fallback);

      final data = json.decode(response.data.toString());

      if (data == null || data is! Map<String, dynamic>) {
        throw BadRequestError();
      }

      _data = Result.fromJson(data);
    } catch (e) {
      print(e);
    }
  }
}

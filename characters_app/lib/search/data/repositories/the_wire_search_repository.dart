import 'package:characters_app/search/domain/models/result.dart' as domain_result;
import 'package:characters_app/search/domain/repositories/search_repository.dart';

class TheWireSearchRepository implements SearchRepository {
  @override
  Future<Iterable<domain_result.Result>> search(String query) {
    throw UnimplementedError();
  }
}

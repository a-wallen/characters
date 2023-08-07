import 'package:characters_app/search/domain/models/result.dart';

/// A repository that is used to search for characters.
abstract class SearchRepository {
  /// Search for characters that match the given [query].
  ///
  /// An empty query will return the default set of characters.
  Future<Iterable<Result>> search(String query);
}

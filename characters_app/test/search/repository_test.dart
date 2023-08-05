import 'package:characters_app/search/domain/repositories/search_repository.dart';
import 'package:flutter_test/flutter_test.dart';

import 'repositories/mock_search_repository.dart';

void main() {
  late SearchRepository repository;

  setUp(() {
    repository = MockSearchRepository();
  });

  group('SearchRepository', () {
    test('search returns an empty list with an empty query', () async {
      // Act
      final results = await repository.search('');

      // Assert
      expect(results, isNotEmpty);
    });

    test('search returns a list of results with a specific query', () async {
      // Act
      final results = await repository.search('Avon');

      // Assert
      expect(results, isNotEmpty);
      expect(results.length, equals(1));
    });

    test('search returns a list of results with a query for multiple results', () async {
      // Act
      final results = await repository.search('ie');

      // Assert
      expect(results, isNotEmpty);
      expect(results.length, equals(3));
    });

    test('search returns results that match the query', () async {
      // Act
      final results = await repository.search('Garbage');

      // Assert
      expect(results, isEmpty);
    });
  });
}

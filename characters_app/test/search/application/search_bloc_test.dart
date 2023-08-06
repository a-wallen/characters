import 'package:bloc_test/bloc_test.dart';
import 'package:characters_app/search/application/bloc/search_bloc.dart';
import 'package:characters_app/search/domain/models/exceptions.dart';
import 'package:characters_app/search/domain/models/result.dart';
import 'package:characters_app/search/domain/repositories/search_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<SearchRepository>()])
import 'search_bloc_test.mocks.dart';

void main() {
  group('SearchBloc', () {
    blocTest<SearchBloc, SearchState>(
      'Initial state should be SearchState.initial()',
      build: () {
        final searchRepository = MockSearchRepository();
        const result = Result(
          title: '',
          description: '',
          image: '',
        );
        when(searchRepository.search(any)).thenAnswer(
          (_) async => [result],
        );
        return SearchBloc(searchRepository: searchRepository);
      },
      act: (bloc) => bloc.add(
        const SearchEvent.search('query'),
      ),
      expect: () => [
        const SearchState.success(
          [
            Result(
              title: '',
              description: '',
              image: '',
            ),
          ],
        ),
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'Search failure event should emit SearchState.failure',
      build: () {
        final searchRepository = MockSearchRepository();
        when(searchRepository.search(any)).thenThrow(
          BadRequestError(),
        );
        return SearchBloc(searchRepository: searchRepository);
      },
      act: (bloc) => bloc.add(
        const SearchEvent.search('query'),
      ),
      expect: () => [
        const SearchState.failure('Bad request'),
      ],
    );
  });
}

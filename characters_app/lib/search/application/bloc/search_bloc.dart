import 'package:bloc/bloc.dart';
import 'package:characters_app/search/domain/models/exceptions.dart';
import 'package:characters_app/search/domain/models/result.dart';
import 'package:characters_app/search/domain/repositories/search_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:meta/meta.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

/// Business logic component for searching characters
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  /// constrcutor for the search bloc
  ///
  /// requires a repository to operate on
  SearchBloc({
    required SearchRepository searchRepository,
  })  : _searchRepository = searchRepository,
        super(const SearchState.initial()) {
    on<SearchEvent>(dispatch);
    add(const SearchEvent.initialize());
  }

  final SearchRepository _searchRepository;

  /// Dispatches the freezed event to the correct handler
  Future<void> dispatch(SearchEvent event, Emitter<SearchState> emit) async =>
      event.when(
        initialize: () => initialize(emit),
        search: (query) => search(query, emit),
      );

  /// Handler for initialization events
  Future<void> initialize(Emitter<SearchState> emit) async {
    await search('', emit);
  }

  /// Handler for search events
  Future<void> search(String query, Emitter<SearchState> emit) async {
    try {
      emit(
        SearchState.success(
          await _searchRepository.search(query),
        ),
      );
    } on CharactersAppException catch (e) {
      emit(
        SearchState.failure(
          e.message,
        ),
      );
    } on Exception catch (e) {
      emit(
        SearchState.failure(
          e.toString(),
        ),
      );
    }
  }
}

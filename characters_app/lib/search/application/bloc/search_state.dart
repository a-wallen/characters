part of 'search_bloc.dart';

/// The state for the [SearchBloc].
@freezed
class SearchState {
  /// The initial state of the [SearchBloc].
  const factory SearchState.initial() = _Initial;

  /// When the search bloc is able to emit results
  const factory SearchState.success(Iterable<Result> result) = _Success;

  /// If the search bloc fails to emit results
  const factory SearchState.failure(String message) = _Failure;
}

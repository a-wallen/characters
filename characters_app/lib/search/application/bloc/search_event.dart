part of 'search_bloc.dart';

/// The events for the [SearchBloc].
@freezed
class SearchEvent with _$SearchEvent {
  /// Initialization event
  const factory SearchEvent.initialize() = _Initialize;
  /// The search event
  const factory SearchEvent.search(String query) = _Search;
}

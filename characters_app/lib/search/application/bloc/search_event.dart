part of 'search_bloc.dart';

/// The events for the [SearchBloc].
@freezed
class SearchEvent with _$SearchEvent {
  /// The search event
  const factory SearchEvent.search(String query) = _Search;
}

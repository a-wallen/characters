import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

/// The data layer definition of a result. In a more complex example, we might
/// have results coming from multiple search engines. Hence the definition
/// may vary for each search engine
@freezed
class Result with _$Result {
  /// Construct a [Result].
  const factory Result({
    required String thumbnail,
    required String title,
    required String description,
  }) = _Result;

  /// Construct the result from JSON
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

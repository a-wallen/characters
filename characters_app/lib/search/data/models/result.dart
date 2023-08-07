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
    @JsonKey(name: 'RelatedTopics') required List<Topic> relatedTopics,
  }) = _Result;

  /// Construct the result from JSON
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Topic with _$Topic {
  /// Construct a [Topic].
  const factory Topic({
    @JsonKey(name: 'FirstUrl') required String? firstUrl,
    @JsonKey(name: 'Icon') required Icon icon,
    @JsonKey(name: 'Result') required String result,
    @JsonKey(name: 'Text') required String text,
  }) = _Topic;

  /// Construct the topic from JSON
  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

@freezed
class Icon with _$Icon {
  /// Construct an [Icon].
  const factory Icon({
    @JsonKey(name: 'Height') required String height,
    @JsonKey(name: 'URL') required String url,
    @JsonKey(name: 'Width') required String width,
  }) = _Icon;

  /// Construct the icon from JSON
  factory Icon.fromJson(Map<String, dynamic> json) => _$IconFromJson(json);
}

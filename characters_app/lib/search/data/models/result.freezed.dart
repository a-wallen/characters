// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'RelatedTopics')
  List<Topic> get relatedTopics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({@JsonKey(name: 'RelatedTopics') List<Topic> relatedTopics});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_value.copyWith(
      relatedTopics: null == relatedTopics
          ? _value.relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'RelatedTopics') List<Topic> relatedTopics});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_$_Result(
      relatedTopics: null == relatedTopics
          ? _value._relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {@JsonKey(name: 'RelatedTopics')
      required final List<Topic> relatedTopics})
      : _relatedTopics = relatedTopics;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<Topic> _relatedTopics;
  @override
  @JsonKey(name: 'RelatedTopics')
  List<Topic> get relatedTopics {
    if (_relatedTopics is EqualUnmodifiableListView) return _relatedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedTopics);
  }

  @override
  String toString() {
    return 'Result(relatedTopics: $relatedTopics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality()
                .equals(other._relatedTopics, _relatedTopics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_relatedTopics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: 'RelatedTopics')
      required final List<Topic> relatedTopics}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: 'RelatedTopics')
  List<Topic> get relatedTopics;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  @JsonKey(name: 'FirstUrl')
  String? get firstUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'Icon')
  Icon get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'Result')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'Text')
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'FirstUrl') String? firstUrl,
      @JsonKey(name: 'Icon') Icon icon,
      @JsonKey(name: 'Result') String result,
      @JsonKey(name: 'Text') String text});

  $IconCopyWith<$Res> get icon;
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstUrl = freezed,
    Object? icon = null,
    Object? result = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      firstUrl: freezed == firstUrl
          ? _value.firstUrl
          : firstUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IconCopyWith<$Res> get icon {
    return $IconCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$_TopicCopyWith(_$_Topic value, $Res Function(_$_Topic) then) =
      __$$_TopicCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'FirstUrl') String? firstUrl,
      @JsonKey(name: 'Icon') Icon icon,
      @JsonKey(name: 'Result') String result,
      @JsonKey(name: 'Text') String text});

  @override
  $IconCopyWith<$Res> get icon;
}

/// @nodoc
class __$$_TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res, _$_Topic>
    implements _$$_TopicCopyWith<$Res> {
  __$$_TopicCopyWithImpl(_$_Topic _value, $Res Function(_$_Topic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstUrl = freezed,
    Object? icon = null,
    Object? result = null,
    Object? text = null,
  }) {
    return _then(_$_Topic(
      firstUrl: freezed == firstUrl
          ? _value.firstUrl
          : firstUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topic implements _Topic {
  const _$_Topic(
      {@JsonKey(name: 'FirstUrl') required this.firstUrl,
      @JsonKey(name: 'Icon') required this.icon,
      @JsonKey(name: 'Result') required this.result,
      @JsonKey(name: 'Text') required this.text});

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$$_TopicFromJson(json);

  @override
  @JsonKey(name: 'FirstUrl')
  final String? firstUrl;
  @override
  @JsonKey(name: 'Icon')
  final Icon icon;
  @override
  @JsonKey(name: 'Result')
  final String result;
  @override
  @JsonKey(name: 'Text')
  final String text;

  @override
  String toString() {
    return 'Topic(firstUrl: $firstUrl, icon: $icon, result: $result, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Topic &&
            (identical(other.firstUrl, firstUrl) ||
                other.firstUrl == firstUrl) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstUrl, icon, result, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      __$$_TopicCopyWithImpl<_$_Topic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  const factory _Topic(
      {@JsonKey(name: 'FirstUrl') required final String? firstUrl,
      @JsonKey(name: 'Icon') required final Icon icon,
      @JsonKey(name: 'Result') required final String result,
      @JsonKey(name: 'Text') required final String text}) = _$_Topic;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  @JsonKey(name: 'FirstUrl')
  String? get firstUrl;
  @override
  @JsonKey(name: 'Icon')
  Icon get icon;
  @override
  @JsonKey(name: 'Result')
  String get result;
  @override
  @JsonKey(name: 'Text')
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_TopicCopyWith<_$_Topic> get copyWith =>
      throw _privateConstructorUsedError;
}

Icon _$IconFromJson(Map<String, dynamic> json) {
  return _Icon.fromJson(json);
}

/// @nodoc
mixin _$Icon {
  @JsonKey(name: 'Height')
  String get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'URL')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  String get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconCopyWith<Icon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconCopyWith<$Res> {
  factory $IconCopyWith(Icon value, $Res Function(Icon) then) =
      _$IconCopyWithImpl<$Res, Icon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') String height,
      @JsonKey(name: 'URL') String url,
      @JsonKey(name: 'Width') String width});
}

/// @nodoc
class _$IconCopyWithImpl<$Res, $Val extends Icon>
    implements $IconCopyWith<$Res> {
  _$IconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IconCopyWith<$Res> implements $IconCopyWith<$Res> {
  factory _$$_IconCopyWith(_$_Icon value, $Res Function(_$_Icon) then) =
      __$$_IconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Height') String height,
      @JsonKey(name: 'URL') String url,
      @JsonKey(name: 'Width') String width});
}

/// @nodoc
class __$$_IconCopyWithImpl<$Res> extends _$IconCopyWithImpl<$Res, _$_Icon>
    implements _$$_IconCopyWith<$Res> {
  __$$_IconCopyWithImpl(_$_Icon _value, $Res Function(_$_Icon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_$_Icon(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Icon implements _Icon {
  const _$_Icon(
      {@JsonKey(name: 'Height') required this.height,
      @JsonKey(name: 'URL') required this.url,
      @JsonKey(name: 'Width') required this.width});

  factory _$_Icon.fromJson(Map<String, dynamic> json) => _$$_IconFromJson(json);

  @override
  @JsonKey(name: 'Height')
  final String height;
  @override
  @JsonKey(name: 'URL')
  final String url;
  @override
  @JsonKey(name: 'Width')
  final String width;

  @override
  String toString() {
    return 'Icon(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Icon &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IconCopyWith<_$_Icon> get copyWith =>
      __$$_IconCopyWithImpl<_$_Icon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IconToJson(
      this,
    );
  }
}

abstract class _Icon implements Icon {
  const factory _Icon(
      {@JsonKey(name: 'Height') required final String height,
      @JsonKey(name: 'URL') required final String url,
      @JsonKey(name: 'Width') required final String width}) = _$_Icon;

  factory _Icon.fromJson(Map<String, dynamic> json) = _$_Icon.fromJson;

  @override
  @JsonKey(name: 'Height')
  String get height;
  @override
  @JsonKey(name: 'URL')
  String get url;
  @override
  @JsonKey(name: 'Width')
  String get width;
  @override
  @JsonKey(ignore: true)
  _$$_IconCopyWith<_$_Icon> get copyWith => throw _privateConstructorUsedError;
}

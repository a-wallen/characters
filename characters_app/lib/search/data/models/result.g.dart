// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      relatedTopics: (json['RelatedTopics'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'RelatedTopics': instance.relatedTopics,
    };

_$_Topic _$$_TopicFromJson(Map<String, dynamic> json) => _$_Topic(
      firstUrl: json['FirstUrl'] as String?,
      icon: Icon.fromJson(json['Icon'] as Map<String, dynamic>),
      result: json['Result'] as String,
      text: json['Text'] as String,
    );

Map<String, dynamic> _$$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'FirstUrl': instance.firstUrl,
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };

_$_Icon _$$_IconFromJson(Map<String, dynamic> json) => _$_Icon(
      height: json['Height'] as String,
      url: json['URL'] as String,
      width: json['Width'] as String,
    );

Map<String, dynamic> _$$_IconToJson(_$_Icon instance) => <String, dynamic>{
      'Height': instance.height,
      'URL': instance.url,
      'Width': instance.width,
    };

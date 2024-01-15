// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionTranslationImpl _$$ConditionTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$ConditionTranslationImpl(
      code: json['code'] as int,
      day: json['day'] as String,
      night: json['night'] as String,
      icon: json['icon'] as int,
      languages: (json['languages'] as List<dynamic>)
          .map((e) =>
              ConditionTranslationLanguages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConditionTranslationImplToJson(
        _$ConditionTranslationImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'day': instance.day,
      'night': instance.night,
      'icon': instance.icon,
      'languages': instance.languages,
    };

_$ConditionTranslationLanguagesImpl
    _$$ConditionTranslationLanguagesImplFromJson(Map<String, dynamic> json) =>
        _$ConditionTranslationLanguagesImpl(
          lang_name: json['lang_name'] as String,
          lang_iso: json['lang_iso'] as String,
          day_text: json['day_text'] as String,
          night_text: json['night_text'] as String,
        );

Map<String, dynamic> _$$ConditionTranslationLanguagesImplToJson(
        _$ConditionTranslationLanguagesImpl instance) =>
    <String, dynamic>{
      'lang_name': instance.lang_name,
      'lang_iso': instance.lang_iso,
      'day_text': instance.day_text,
      'night_text': instance.night_text,
    };

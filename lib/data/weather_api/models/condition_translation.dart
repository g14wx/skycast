import 'package:freezed_annotation/freezed_annotation.dart';

part 'condition_translation.freezed.dart';
part 'condition_translation.g.dart';

@freezed
class ConditionTranslation with _$ConditionTranslation {
  const factory ConditionTranslation(
      {required int code,
      required String day,
      required String night,
      required int icon,
      required List<ConditionTranslationLanguages> languages}) = _ConditionTranslation;

  factory ConditionTranslation.fromJson(Map<String, dynamic> json) => _$ConditionTranslationFromJson(json);
}

@freezed
class ConditionTranslationLanguages with _$ConditionTranslationLanguages {
  const factory ConditionTranslationLanguages(
      {required String lang_name,
      required String lang_iso,
      required String day_text,
      required String night_text}) = _ConditionTranslationLanguages;

  factory ConditionTranslationLanguages.fromJson(Map<String, dynamic> json) =>
      _$ConditionTranslationLanguagesFromJson(json);
}

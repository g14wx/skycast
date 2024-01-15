// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_translation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConditionTranslation _$ConditionTranslationFromJson(Map<String, dynamic> json) {
  return _ConditionTranslation.fromJson(json);
}

/// @nodoc
mixin _$ConditionTranslation {
  int get code => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  String get night => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  List<ConditionTranslationLanguages> get languages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionTranslationCopyWith<ConditionTranslation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionTranslationCopyWith<$Res> {
  factory $ConditionTranslationCopyWith(ConditionTranslation value,
          $Res Function(ConditionTranslation) then) =
      _$ConditionTranslationCopyWithImpl<$Res, ConditionTranslation>;
  @useResult
  $Res call(
      {int code,
      String day,
      String night,
      int icon,
      List<ConditionTranslationLanguages> languages});
}

/// @nodoc
class _$ConditionTranslationCopyWithImpl<$Res,
        $Val extends ConditionTranslation>
    implements $ConditionTranslationCopyWith<$Res> {
  _$ConditionTranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? day = null,
    Object? night = null,
    Object? icon = null,
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<ConditionTranslationLanguages>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionTranslationImplCopyWith<$Res>
    implements $ConditionTranslationCopyWith<$Res> {
  factory _$$ConditionTranslationImplCopyWith(_$ConditionTranslationImpl value,
          $Res Function(_$ConditionTranslationImpl) then) =
      __$$ConditionTranslationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String day,
      String night,
      int icon,
      List<ConditionTranslationLanguages> languages});
}

/// @nodoc
class __$$ConditionTranslationImplCopyWithImpl<$Res>
    extends _$ConditionTranslationCopyWithImpl<$Res, _$ConditionTranslationImpl>
    implements _$$ConditionTranslationImplCopyWith<$Res> {
  __$$ConditionTranslationImplCopyWithImpl(_$ConditionTranslationImpl _value,
      $Res Function(_$ConditionTranslationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? day = null,
    Object? night = null,
    Object? icon = null,
    Object? languages = null,
  }) {
    return _then(_$ConditionTranslationImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<ConditionTranslationLanguages>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionTranslationImpl implements _ConditionTranslation {
  const _$ConditionTranslationImpl(
      {required this.code,
      required this.day,
      required this.night,
      required this.icon,
      required final List<ConditionTranslationLanguages> languages})
      : _languages = languages;

  factory _$ConditionTranslationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionTranslationImplFromJson(json);

  @override
  final int code;
  @override
  final String day;
  @override
  final String night;
  @override
  final int icon;
  final List<ConditionTranslationLanguages> _languages;
  @override
  List<ConditionTranslationLanguages> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  String toString() {
    return 'ConditionTranslation(code: $code, day: $day, night: $night, icon: $icon, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionTranslationImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, day, night, icon,
      const DeepCollectionEquality().hash(_languages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionTranslationImplCopyWith<_$ConditionTranslationImpl>
      get copyWith =>
          __$$ConditionTranslationImplCopyWithImpl<_$ConditionTranslationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionTranslationImplToJson(
      this,
    );
  }
}

abstract class _ConditionTranslation implements ConditionTranslation {
  const factory _ConditionTranslation(
          {required final int code,
          required final String day,
          required final String night,
          required final int icon,
          required final List<ConditionTranslationLanguages> languages}) =
      _$ConditionTranslationImpl;

  factory _ConditionTranslation.fromJson(Map<String, dynamic> json) =
      _$ConditionTranslationImpl.fromJson;

  @override
  int get code;
  @override
  String get day;
  @override
  String get night;
  @override
  int get icon;
  @override
  List<ConditionTranslationLanguages> get languages;
  @override
  @JsonKey(ignore: true)
  _$$ConditionTranslationImplCopyWith<_$ConditionTranslationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConditionTranslationLanguages _$ConditionTranslationLanguagesFromJson(
    Map<String, dynamic> json) {
  return _ConditionTranslationLanguages.fromJson(json);
}

/// @nodoc
mixin _$ConditionTranslationLanguages {
  String get lang_name => throw _privateConstructorUsedError;
  String get lang_iso => throw _privateConstructorUsedError;
  String get day_text => throw _privateConstructorUsedError;
  String get night_text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionTranslationLanguagesCopyWith<ConditionTranslationLanguages>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionTranslationLanguagesCopyWith<$Res> {
  factory $ConditionTranslationLanguagesCopyWith(
          ConditionTranslationLanguages value,
          $Res Function(ConditionTranslationLanguages) then) =
      _$ConditionTranslationLanguagesCopyWithImpl<$Res,
          ConditionTranslationLanguages>;
  @useResult
  $Res call(
      {String lang_name, String lang_iso, String day_text, String night_text});
}

/// @nodoc
class _$ConditionTranslationLanguagesCopyWithImpl<$Res,
        $Val extends ConditionTranslationLanguages>
    implements $ConditionTranslationLanguagesCopyWith<$Res> {
  _$ConditionTranslationLanguagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang_name = null,
    Object? lang_iso = null,
    Object? day_text = null,
    Object? night_text = null,
  }) {
    return _then(_value.copyWith(
      lang_name: null == lang_name
          ? _value.lang_name
          : lang_name // ignore: cast_nullable_to_non_nullable
              as String,
      lang_iso: null == lang_iso
          ? _value.lang_iso
          : lang_iso // ignore: cast_nullable_to_non_nullable
              as String,
      day_text: null == day_text
          ? _value.day_text
          : day_text // ignore: cast_nullable_to_non_nullable
              as String,
      night_text: null == night_text
          ? _value.night_text
          : night_text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionTranslationLanguagesImplCopyWith<$Res>
    implements $ConditionTranslationLanguagesCopyWith<$Res> {
  factory _$$ConditionTranslationLanguagesImplCopyWith(
          _$ConditionTranslationLanguagesImpl value,
          $Res Function(_$ConditionTranslationLanguagesImpl) then) =
      __$$ConditionTranslationLanguagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String lang_name, String lang_iso, String day_text, String night_text});
}

/// @nodoc
class __$$ConditionTranslationLanguagesImplCopyWithImpl<$Res>
    extends _$ConditionTranslationLanguagesCopyWithImpl<$Res,
        _$ConditionTranslationLanguagesImpl>
    implements _$$ConditionTranslationLanguagesImplCopyWith<$Res> {
  __$$ConditionTranslationLanguagesImplCopyWithImpl(
      _$ConditionTranslationLanguagesImpl _value,
      $Res Function(_$ConditionTranslationLanguagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang_name = null,
    Object? lang_iso = null,
    Object? day_text = null,
    Object? night_text = null,
  }) {
    return _then(_$ConditionTranslationLanguagesImpl(
      lang_name: null == lang_name
          ? _value.lang_name
          : lang_name // ignore: cast_nullable_to_non_nullable
              as String,
      lang_iso: null == lang_iso
          ? _value.lang_iso
          : lang_iso // ignore: cast_nullable_to_non_nullable
              as String,
      day_text: null == day_text
          ? _value.day_text
          : day_text // ignore: cast_nullable_to_non_nullable
              as String,
      night_text: null == night_text
          ? _value.night_text
          : night_text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionTranslationLanguagesImpl
    implements _ConditionTranslationLanguages {
  const _$ConditionTranslationLanguagesImpl(
      {required this.lang_name,
      required this.lang_iso,
      required this.day_text,
      required this.night_text});

  factory _$ConditionTranslationLanguagesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConditionTranslationLanguagesImplFromJson(json);

  @override
  final String lang_name;
  @override
  final String lang_iso;
  @override
  final String day_text;
  @override
  final String night_text;

  @override
  String toString() {
    return 'ConditionTranslationLanguages(lang_name: $lang_name, lang_iso: $lang_iso, day_text: $day_text, night_text: $night_text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionTranslationLanguagesImpl &&
            (identical(other.lang_name, lang_name) ||
                other.lang_name == lang_name) &&
            (identical(other.lang_iso, lang_iso) ||
                other.lang_iso == lang_iso) &&
            (identical(other.day_text, day_text) ||
                other.day_text == day_text) &&
            (identical(other.night_text, night_text) ||
                other.night_text == night_text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lang_name, lang_iso, day_text, night_text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionTranslationLanguagesImplCopyWith<
          _$ConditionTranslationLanguagesImpl>
      get copyWith => __$$ConditionTranslationLanguagesImplCopyWithImpl<
          _$ConditionTranslationLanguagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionTranslationLanguagesImplToJson(
      this,
    );
  }
}

abstract class _ConditionTranslationLanguages
    implements ConditionTranslationLanguages {
  const factory _ConditionTranslationLanguages(
      {required final String lang_name,
      required final String lang_iso,
      required final String day_text,
      required final String night_text}) = _$ConditionTranslationLanguagesImpl;

  factory _ConditionTranslationLanguages.fromJson(Map<String, dynamic> json) =
      _$ConditionTranslationLanguagesImpl.fromJson;

  @override
  String get lang_name;
  @override
  String get lang_iso;
  @override
  String get day_text;
  @override
  String get night_text;
  @override
  @JsonKey(ignore: true)
  _$$ConditionTranslationLanguagesImplCopyWith<
          _$ConditionTranslationLanguagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

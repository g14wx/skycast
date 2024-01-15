// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_from_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceFromApi _$PlaceFromApiFromJson(Map<String, dynamic> json) {
  return _PlaceFromApi.fromJson(json);
}

/// @nodoc
mixin _$PlaceFromApi {
  String get description => throw _privateConstructorUsedError;
  String get place_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceFromApiCopyWith<PlaceFromApi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceFromApiCopyWith<$Res> {
  factory $PlaceFromApiCopyWith(PlaceFromApi value, $Res Function(PlaceFromApi) then) =
      _$PlaceFromApiCopyWithImpl<$Res, PlaceFromApi>;
  @useResult
  $Res call({String description, String place_id});
}

/// @nodoc
class _$PlaceFromApiCopyWithImpl<$Res, $Val extends PlaceFromApi> implements $PlaceFromApiCopyWith<$Res> {
  _$PlaceFromApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? place_id = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place_id: null == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceFromApiImplCopyWith<$Res> implements $PlaceFromApiCopyWith<$Res> {
  factory _$$PlaceFromApiImplCopyWith(_$PlaceFromApiImpl value, $Res Function(_$PlaceFromApiImpl) then) =
      __$$PlaceFromApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String place_id});
}

/// @nodoc
class __$$PlaceFromApiImplCopyWithImpl<$Res> extends _$PlaceFromApiCopyWithImpl<$Res, _$PlaceFromApiImpl>
    implements _$$PlaceFromApiImplCopyWith<$Res> {
  __$$PlaceFromApiImplCopyWithImpl(_$PlaceFromApiImpl _value, $Res Function(_$PlaceFromApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? place_id = null,
  }) {
    return _then(_$PlaceFromApiImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place_id: null == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceFromApiImpl implements _PlaceFromApi {
  const _$PlaceFromApiImpl({required this.description, required this.place_id});

  factory _$PlaceFromApiImpl.fromJson(Map<String, dynamic> json) => _$$PlaceFromApiImplFromJson(json);

  @override
  final String description;
  @override
  final String place_id;

  @override
  String toString() {
    return 'PlaceFromApi(description: $description, place_id: $place_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceFromApiImpl &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.place_id, place_id) || other.place_id == place_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, place_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceFromApiImplCopyWith<_$PlaceFromApiImpl> get copyWith =>
      __$$PlaceFromApiImplCopyWithImpl<_$PlaceFromApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceFromApiImplToJson(
      this,
    );
  }
}

abstract class _PlaceFromApi implements PlaceFromApi {
  const factory _PlaceFromApi({required final String description, required final String place_id}) = _$PlaceFromApiImpl;

  factory _PlaceFromApi.fromJson(Map<String, dynamic> json) = _$PlaceFromApiImpl.fromJson;

  @override
  String get description;
  @override
  String get place_id;
  @override
  @JsonKey(ignore: true)
  _$$PlaceFromApiImplCopyWith<_$PlaceFromApiImpl> get copyWith => throw _privateConstructorUsedError;
}

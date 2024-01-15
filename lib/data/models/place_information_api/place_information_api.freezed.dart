// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_information_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceInformationApi _$PlaceInformationApiFromJson(Map<String, dynamic> json) {
  return _PlaceInformationApi.fromJson(json);
}

/// @nodoc
mixin _$PlaceInformationApi {
  PlaceInformationResult get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceInformationApiCopyWith<PlaceInformationApi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceInformationApiCopyWith<$Res> {
  factory $PlaceInformationApiCopyWith(PlaceInformationApi value, $Res Function(PlaceInformationApi) then) =
      _$PlaceInformationApiCopyWithImpl<$Res, PlaceInformationApi>;
  @useResult
  $Res call({PlaceInformationResult result});

  $PlaceInformationResultCopyWith<$Res> get result;
}

/// @nodoc
class _$PlaceInformationApiCopyWithImpl<$Res, $Val extends PlaceInformationApi>
    implements $PlaceInformationApiCopyWith<$Res> {
  _$PlaceInformationApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlaceInformationResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceInformationResultCopyWith<$Res> get result {
    return $PlaceInformationResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceInformationApiImplCopyWith<$Res> implements $PlaceInformationApiCopyWith<$Res> {
  factory _$$PlaceInformationApiImplCopyWith(
          _$PlaceInformationApiImpl value, $Res Function(_$PlaceInformationApiImpl) then) =
      __$$PlaceInformationApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceInformationResult result});

  @override
  $PlaceInformationResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$PlaceInformationApiImplCopyWithImpl<$Res>
    extends _$PlaceInformationApiCopyWithImpl<$Res, _$PlaceInformationApiImpl>
    implements _$$PlaceInformationApiImplCopyWith<$Res> {
  __$$PlaceInformationApiImplCopyWithImpl(
      _$PlaceInformationApiImpl _value, $Res Function(_$PlaceInformationApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$PlaceInformationApiImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PlaceInformationResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceInformationApiImpl implements _PlaceInformationApi {
  const _$PlaceInformationApiImpl({required this.result});

  factory _$PlaceInformationApiImpl.fromJson(Map<String, dynamic> json) => _$$PlaceInformationApiImplFromJson(json);

  @override
  final PlaceInformationResult result;

  @override
  String toString() {
    return 'PlaceInformationApi(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceInformationApiImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceInformationApiImplCopyWith<_$PlaceInformationApiImpl> get copyWith =>
      __$$PlaceInformationApiImplCopyWithImpl<_$PlaceInformationApiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceInformationApiImplToJson(
      this,
    );
  }
}

abstract class _PlaceInformationApi implements PlaceInformationApi {
  const factory _PlaceInformationApi({required final PlaceInformationResult result}) = _$PlaceInformationApiImpl;

  factory _PlaceInformationApi.fromJson(Map<String, dynamic> json) = _$PlaceInformationApiImpl.fromJson;

  @override
  PlaceInformationResult get result;
  @override
  @JsonKey(ignore: true)
  _$$PlaceInformationApiImplCopyWith<_$PlaceInformationApiImpl> get copyWith => throw _privateConstructorUsedError;
}

PlaceInformationResult _$PlaceInformationResultFromJson(Map<String, dynamic> json) {
  return _PlaceInformationResult.fromJson(json);
}

/// @nodoc
mixin _$PlaceInformationResult {
  PlaceInformationResultGeometry get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceInformationResultCopyWith<PlaceInformationResult> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceInformationResultCopyWith<$Res> {
  factory $PlaceInformationResultCopyWith(PlaceInformationResult value, $Res Function(PlaceInformationResult) then) =
      _$PlaceInformationResultCopyWithImpl<$Res, PlaceInformationResult>;
  @useResult
  $Res call({PlaceInformationResultGeometry geometry});

  $PlaceInformationResultGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$PlaceInformationResultCopyWithImpl<$Res, $Val extends PlaceInformationResult>
    implements $PlaceInformationResultCopyWith<$Res> {
  _$PlaceInformationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = null,
  }) {
    return _then(_value.copyWith(
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as PlaceInformationResultGeometry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceInformationResultGeometryCopyWith<$Res> get geometry {
    return $PlaceInformationResultGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceInformationResultImplCopyWith<$Res> implements $PlaceInformationResultCopyWith<$Res> {
  factory _$$PlaceInformationResultImplCopyWith(
          _$PlaceInformationResultImpl value, $Res Function(_$PlaceInformationResultImpl) then) =
      __$$PlaceInformationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceInformationResultGeometry geometry});

  @override
  $PlaceInformationResultGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$$PlaceInformationResultImplCopyWithImpl<$Res>
    extends _$PlaceInformationResultCopyWithImpl<$Res, _$PlaceInformationResultImpl>
    implements _$$PlaceInformationResultImplCopyWith<$Res> {
  __$$PlaceInformationResultImplCopyWithImpl(
      _$PlaceInformationResultImpl _value, $Res Function(_$PlaceInformationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometry = null,
  }) {
    return _then(_$PlaceInformationResultImpl(
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as PlaceInformationResultGeometry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceInformationResultImpl implements _PlaceInformationResult {
  const _$PlaceInformationResultImpl({required this.geometry});

  factory _$PlaceInformationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceInformationResultImplFromJson(json);

  @override
  final PlaceInformationResultGeometry geometry;

  @override
  String toString() {
    return 'PlaceInformationResult(geometry: $geometry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceInformationResultImpl &&
            (identical(other.geometry, geometry) || other.geometry == geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, geometry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceInformationResultImplCopyWith<_$PlaceInformationResultImpl> get copyWith =>
      __$$PlaceInformationResultImplCopyWithImpl<_$PlaceInformationResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceInformationResultImplToJson(
      this,
    );
  }
}

abstract class _PlaceInformationResult implements PlaceInformationResult {
  const factory _PlaceInformationResult({required final PlaceInformationResultGeometry geometry}) =
      _$PlaceInformationResultImpl;

  factory _PlaceInformationResult.fromJson(Map<String, dynamic> json) = _$PlaceInformationResultImpl.fromJson;

  @override
  PlaceInformationResultGeometry get geometry;
  @override
  @JsonKey(ignore: true)
  _$$PlaceInformationResultImplCopyWith<_$PlaceInformationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceInformationResultGeometry _$PlaceInformationResultGeometryFromJson(Map<String, dynamic> json) {
  return _PlaceInformationResultGeometry.fromJson(json);
}

/// @nodoc
mixin _$PlaceInformationResultGeometry {
  PlaceInformationResultGeometryLocation get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceInformationResultGeometryCopyWith<PlaceInformationResultGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceInformationResultGeometryCopyWith<$Res> {
  factory $PlaceInformationResultGeometryCopyWith(
          PlaceInformationResultGeometry value, $Res Function(PlaceInformationResultGeometry) then) =
      _$PlaceInformationResultGeometryCopyWithImpl<$Res, PlaceInformationResultGeometry>;
  @useResult
  $Res call({PlaceInformationResultGeometryLocation location});

  $PlaceInformationResultGeometryLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$PlaceInformationResultGeometryCopyWithImpl<$Res, $Val extends PlaceInformationResultGeometry>
    implements $PlaceInformationResultGeometryCopyWith<$Res> {
  _$PlaceInformationResultGeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceInformationResultGeometryLocation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceInformationResultGeometryLocationCopyWith<$Res> get location {
    return $PlaceInformationResultGeometryLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceInformationResultGeometryImplCopyWith<$Res>
    implements $PlaceInformationResultGeometryCopyWith<$Res> {
  factory _$$PlaceInformationResultGeometryImplCopyWith(
          _$PlaceInformationResultGeometryImpl value, $Res Function(_$PlaceInformationResultGeometryImpl) then) =
      __$$PlaceInformationResultGeometryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceInformationResultGeometryLocation location});

  @override
  $PlaceInformationResultGeometryLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$PlaceInformationResultGeometryImplCopyWithImpl<$Res>
    extends _$PlaceInformationResultGeometryCopyWithImpl<$Res, _$PlaceInformationResultGeometryImpl>
    implements _$$PlaceInformationResultGeometryImplCopyWith<$Res> {
  __$$PlaceInformationResultGeometryImplCopyWithImpl(
      _$PlaceInformationResultGeometryImpl _value, $Res Function(_$PlaceInformationResultGeometryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$PlaceInformationResultGeometryImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as PlaceInformationResultGeometryLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceInformationResultGeometryImpl implements _PlaceInformationResultGeometry {
  const _$PlaceInformationResultGeometryImpl({required this.location});

  factory _$PlaceInformationResultGeometryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceInformationResultGeometryImplFromJson(json);

  @override
  final PlaceInformationResultGeometryLocation location;

  @override
  String toString() {
    return 'PlaceInformationResultGeometry(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceInformationResultGeometryImpl &&
            (identical(other.location, location) || other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceInformationResultGeometryImplCopyWith<_$PlaceInformationResultGeometryImpl> get copyWith =>
      __$$PlaceInformationResultGeometryImplCopyWithImpl<_$PlaceInformationResultGeometryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceInformationResultGeometryImplToJson(
      this,
    );
  }
}

abstract class _PlaceInformationResultGeometry implements PlaceInformationResultGeometry {
  const factory _PlaceInformationResultGeometry({required final PlaceInformationResultGeometryLocation location}) =
      _$PlaceInformationResultGeometryImpl;

  factory _PlaceInformationResultGeometry.fromJson(Map<String, dynamic> json) =
      _$PlaceInformationResultGeometryImpl.fromJson;

  @override
  PlaceInformationResultGeometryLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$PlaceInformationResultGeometryImplCopyWith<_$PlaceInformationResultGeometryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceInformationResultGeometryLocation _$PlaceInformationResultGeometryLocationFromJson(Map<String, dynamic> json) {
  return _PlaceInformationResultGeometryLocation.fromJson(json);
}

/// @nodoc
mixin _$PlaceInformationResultGeometryLocation {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceInformationResultGeometryLocationCopyWith<PlaceInformationResultGeometryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceInformationResultGeometryLocationCopyWith<$Res> {
  factory $PlaceInformationResultGeometryLocationCopyWith(
          PlaceInformationResultGeometryLocation value, $Res Function(PlaceInformationResultGeometryLocation) then) =
      _$PlaceInformationResultGeometryLocationCopyWithImpl<$Res, PlaceInformationResultGeometryLocation>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$PlaceInformationResultGeometryLocationCopyWithImpl<$Res, $Val extends PlaceInformationResultGeometryLocation>
    implements $PlaceInformationResultGeometryLocationCopyWith<$Res> {
  _$PlaceInformationResultGeometryLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceInformationResultGeometryLocationImplCopyWith<$Res>
    implements $PlaceInformationResultGeometryLocationCopyWith<$Res> {
  factory _$$PlaceInformationResultGeometryLocationImplCopyWith(_$PlaceInformationResultGeometryLocationImpl value,
          $Res Function(_$PlaceInformationResultGeometryLocationImpl) then) =
      __$$PlaceInformationResultGeometryLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$PlaceInformationResultGeometryLocationImplCopyWithImpl<$Res>
    extends _$PlaceInformationResultGeometryLocationCopyWithImpl<$Res, _$PlaceInformationResultGeometryLocationImpl>
    implements _$$PlaceInformationResultGeometryLocationImplCopyWith<$Res> {
  __$$PlaceInformationResultGeometryLocationImplCopyWithImpl(_$PlaceInformationResultGeometryLocationImpl _value,
      $Res Function(_$PlaceInformationResultGeometryLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$PlaceInformationResultGeometryLocationImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceInformationResultGeometryLocationImpl implements _PlaceInformationResultGeometryLocation {
  const _$PlaceInformationResultGeometryLocationImpl({required this.lat, required this.lng});

  factory _$PlaceInformationResultGeometryLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceInformationResultGeometryLocationImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'PlaceInformationResultGeometryLocation(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceInformationResultGeometryLocationImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceInformationResultGeometryLocationImplCopyWith<_$PlaceInformationResultGeometryLocationImpl> get copyWith =>
      __$$PlaceInformationResultGeometryLocationImplCopyWithImpl<_$PlaceInformationResultGeometryLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceInformationResultGeometryLocationImplToJson(
      this,
    );
  }
}

abstract class _PlaceInformationResultGeometryLocation implements PlaceInformationResultGeometryLocation {
  const factory _PlaceInformationResultGeometryLocation({required final double lat, required final double lng}) =
      _$PlaceInformationResultGeometryLocationImpl;

  factory _PlaceInformationResultGeometryLocation.fromJson(Map<String, dynamic> json) =
      _$PlaceInformationResultGeometryLocationImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$PlaceInformationResultGeometryLocationImplCopyWith<_$PlaceInformationResultGeometryLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

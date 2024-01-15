// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_service_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataServiceResponse {
  int get statusCode => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataServiceResponseCopyWith<DataServiceResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataServiceResponseCopyWith<$Res> {
  factory $DataServiceResponseCopyWith(DataServiceResponse value, $Res Function(DataServiceResponse) then) =
      _$DataServiceResponseCopyWithImpl<$Res, DataServiceResponse>;
  @useResult
  $Res call({int statusCode, dynamic data});
}

/// @nodoc
class _$DataServiceResponseCopyWithImpl<$Res, $Val extends DataServiceResponse>
    implements $DataServiceResponseCopyWith<$Res> {
  _$DataServiceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataServiceResponseImplCopyWith<$Res> implements $DataServiceResponseCopyWith<$Res> {
  factory _$$DataServiceResponseImplCopyWith(
          _$DataServiceResponseImpl value, $Res Function(_$DataServiceResponseImpl) then) =
      __$$DataServiceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, dynamic data});
}

/// @nodoc
class __$$DataServiceResponseImplCopyWithImpl<$Res>
    extends _$DataServiceResponseCopyWithImpl<$Res, _$DataServiceResponseImpl>
    implements _$$DataServiceResponseImplCopyWith<$Res> {
  __$$DataServiceResponseImplCopyWithImpl(
      _$DataServiceResponseImpl _value, $Res Function(_$DataServiceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = freezed,
  }) {
    return _then(_$DataServiceResponseImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DataServiceResponseImpl implements _DataServiceResponse {
  const _$DataServiceResponseImpl({required this.statusCode, required this.data});

  @override
  final int statusCode;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'DataServiceResponse(statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataServiceResponseImpl &&
            (identical(other.statusCode, statusCode) || other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataServiceResponseImplCopyWith<_$DataServiceResponseImpl> get copyWith =>
      __$$DataServiceResponseImplCopyWithImpl<_$DataServiceResponseImpl>(this, _$identity);
}

abstract class _DataServiceResponse implements DataServiceResponse {
  const factory _DataServiceResponse({required final int statusCode, required final dynamic data}) =
      _$DataServiceResponseImpl;

  @override
  int get statusCode;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$DataServiceResponseImplCopyWith<_$DataServiceResponseImpl> get copyWith => throw _privateConstructorUsedError;
}

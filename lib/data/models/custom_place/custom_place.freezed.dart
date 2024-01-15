// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomPlace _$CustomPlaceFromJson(Map<String, dynamic> json) {
  return _CustomPlace.fromJson(json);
}

/// @nodoc
mixin _$CustomPlace {
  String get direction => throw _privateConstructorUsedError;
  String get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomPlaceCopyWith<CustomPlace> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomPlaceCopyWith<$Res> {
  factory $CustomPlaceCopyWith(CustomPlace value, $Res Function(CustomPlace) then) =
      _$CustomPlaceCopyWithImpl<$Res, CustomPlace>;
  @useResult
  $Res call({String direction, String placeId});
}

/// @nodoc
class _$CustomPlaceCopyWithImpl<$Res, $Val extends CustomPlace> implements $CustomPlaceCopyWith<$Res> {
  _$CustomPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? placeId = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomPlaceImplCopyWith<$Res> implements $CustomPlaceCopyWith<$Res> {
  factory _$$CustomPlaceImplCopyWith(_$CustomPlaceImpl value, $Res Function(_$CustomPlaceImpl) then) =
      __$$CustomPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String direction, String placeId});
}

/// @nodoc
class __$$CustomPlaceImplCopyWithImpl<$Res> extends _$CustomPlaceCopyWithImpl<$Res, _$CustomPlaceImpl>
    implements _$$CustomPlaceImplCopyWith<$Res> {
  __$$CustomPlaceImplCopyWithImpl(_$CustomPlaceImpl _value, $Res Function(_$CustomPlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? placeId = null,
  }) {
    return _then(_$CustomPlaceImpl(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomPlaceImpl implements _CustomPlace {
  const _$CustomPlaceImpl({required this.direction, required this.placeId});

  factory _$CustomPlaceImpl.fromJson(Map<String, dynamic> json) => _$$CustomPlaceImplFromJson(json);

  @override
  final String direction;
  @override
  final String placeId;

  @override
  String toString() {
    return 'CustomPlace(direction: $direction, placeId: $placeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomPlaceImpl &&
            (identical(other.direction, direction) || other.direction == direction) &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, direction, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomPlaceImplCopyWith<_$CustomPlaceImpl> get copyWith =>
      __$$CustomPlaceImplCopyWithImpl<_$CustomPlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomPlaceImplToJson(
      this,
    );
  }
}

abstract class _CustomPlace implements CustomPlace {
  const factory _CustomPlace({required final String direction, required final String placeId}) = _$CustomPlaceImpl;

  factory _CustomPlace.fromJson(Map<String, dynamic> json) = _$CustomPlaceImpl.fromJson;

  @override
  String get direction;
  @override
  String get placeId;
  @override
  @JsonKey(ignore: true)
  _$$CustomPlaceImplCopyWith<_$CustomPlaceImpl> get copyWith => throw _privateConstructorUsedError;
}

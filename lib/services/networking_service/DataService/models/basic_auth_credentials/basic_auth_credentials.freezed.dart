// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_auth_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasicAuthCredentials _$BasicAuthCredentialsFromJson(Map<String, dynamic> json) {
  return _BasicAuthCredentials.fromJson(json);
}

/// @nodoc
mixin _$BasicAuthCredentials {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicAuthCredentialsCopyWith<BasicAuthCredentials> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicAuthCredentialsCopyWith<$Res> {
  factory $BasicAuthCredentialsCopyWith(BasicAuthCredentials value, $Res Function(BasicAuthCredentials) then) =
      _$BasicAuthCredentialsCopyWithImpl<$Res, BasicAuthCredentials>;
  @useResult
  $Res call({String? username, String? password, String? user});
}

/// @nodoc
class _$BasicAuthCredentialsCopyWithImpl<$Res, $Val extends BasicAuthCredentials>
    implements $BasicAuthCredentialsCopyWith<$Res> {
  _$BasicAuthCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicAuthCredentialsImplCopyWith<$Res> implements $BasicAuthCredentialsCopyWith<$Res> {
  factory _$$BasicAuthCredentialsImplCopyWith(
          _$BasicAuthCredentialsImpl value, $Res Function(_$BasicAuthCredentialsImpl) then) =
      __$$BasicAuthCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? password, String? user});
}

/// @nodoc
class __$$BasicAuthCredentialsImplCopyWithImpl<$Res>
    extends _$BasicAuthCredentialsCopyWithImpl<$Res, _$BasicAuthCredentialsImpl>
    implements _$$BasicAuthCredentialsImplCopyWith<$Res> {
  __$$BasicAuthCredentialsImplCopyWithImpl(
      _$BasicAuthCredentialsImpl _value, $Res Function(_$BasicAuthCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? user = freezed,
  }) {
    return _then(_$BasicAuthCredentialsImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicAuthCredentialsImpl implements _BasicAuthCredentials {
  const _$BasicAuthCredentialsImpl({this.username, this.password, this.user});

  factory _$BasicAuthCredentialsImpl.fromJson(Map<String, dynamic> json) => _$$BasicAuthCredentialsImplFromJson(json);

  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? user;

  @override
  String toString() {
    return 'BasicAuthCredentials(username: $username, password: $password, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicAuthCredentialsImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicAuthCredentialsImplCopyWith<_$BasicAuthCredentialsImpl> get copyWith =>
      __$$BasicAuthCredentialsImplCopyWithImpl<_$BasicAuthCredentialsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicAuthCredentialsImplToJson(
      this,
    );
  }
}

abstract class _BasicAuthCredentials implements BasicAuthCredentials {
  const factory _BasicAuthCredentials({final String? username, final String? password, final String? user}) =
      _$BasicAuthCredentialsImpl;

  factory _BasicAuthCredentials.fromJson(Map<String, dynamic> json) = _$BasicAuthCredentialsImpl.fromJson;

  @override
  String? get username;
  @override
  String? get password;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$BasicAuthCredentialsImplCopyWith<_$BasicAuthCredentialsImpl> get copyWith => throw _privateConstructorUsedError;
}

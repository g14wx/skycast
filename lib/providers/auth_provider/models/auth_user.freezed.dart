// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthUser _$AuthUserFromJson(Map<String, dynamic> json) {
  return _AuthUser.fromJson(json);
}

/// @nodoc
mixin _$AuthUser {
  String get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  String? get docId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserCopyWith<AuthUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) then) = _$AuthUserCopyWithImpl<$Res, AuthUser>;
  @useResult
  $Res call({String name, String? phoneNumber, String? email, String uid, String? profilePicture, String? docId});
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res, $Val extends AuthUser> implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? uid = null,
    Object? profilePicture = freezed,
    Object? docId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserImplCopyWith<$Res> implements $AuthUserCopyWith<$Res> {
  factory _$$AuthUserImplCopyWith(_$AuthUserImpl value, $Res Function(_$AuthUserImpl) then) =
      __$$AuthUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? phoneNumber, String? email, String uid, String? profilePicture, String? docId});
}

/// @nodoc
class __$$AuthUserImplCopyWithImpl<$Res> extends _$AuthUserCopyWithImpl<$Res, _$AuthUserImpl>
    implements _$$AuthUserImplCopyWith<$Res> {
  __$$AuthUserImplCopyWithImpl(_$AuthUserImpl _value, $Res Function(_$AuthUserImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? uid = null,
    Object? profilePicture = freezed,
    Object? docId = freezed,
  }) {
    return _then(_$AuthUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      docId: freezed == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserImpl implements _AuthUser {
  const _$AuthUserImpl(
      {required this.name, this.phoneNumber, this.email, required this.uid, this.profilePicture, this.docId});

  factory _$AuthUserImpl.fromJson(Map<String, dynamic> json) => _$$AuthUserImplFromJson(json);

  @override
  final String name;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String uid;
  @override
  final String? profilePicture;
  @override
  final String? docId;

  @override
  String toString() {
    return 'AuthUser(name: $name, phoneNumber: $phoneNumber, email: $email, uid: $uid, profilePicture: $profilePicture, docId: $docId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture) &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, email, uid, profilePicture, docId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith =>
      __$$AuthUserImplCopyWithImpl<_$AuthUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserImplToJson(
      this,
    );
  }
}

abstract class _AuthUser implements AuthUser {
  const factory _AuthUser(
      {required final String name,
      final String? phoneNumber,
      final String? email,
      required final String uid,
      final String? profilePicture,
      final String? docId}) = _$AuthUserImpl;

  factory _AuthUser.fromJson(Map<String, dynamic> json) = _$AuthUserImpl.fromJson;

  @override
  String get name;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  String get uid;
  @override
  String? get profilePicture;
  @override
  String? get docId;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith => throw _privateConstructorUsedError;
}

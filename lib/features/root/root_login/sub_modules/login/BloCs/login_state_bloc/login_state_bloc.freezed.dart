// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginStateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUser authUser) loginIsSuccess,
    required TResult Function() setLoginScreen,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthUser authUser)? loginIsSuccess,
    TResult? Function()? setLoginScreen,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUser authUser)? loginIsSuccess,
    TResult Function()? setLoginScreen,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginIsSuccess value) loginIsSuccess,
    required TResult Function(_SetLoginScreen value) setLoginScreen,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult? Function(_SetLoginScreen value)? setLoginScreen,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult Function(_SetLoginScreen value)? setLoginScreen,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateEventCopyWith<$Res> {
  factory $LoginStateEventCopyWith(LoginStateEvent value, $Res Function(LoginStateEvent) then) =
      _$LoginStateEventCopyWithImpl<$Res, LoginStateEvent>;
}

/// @nodoc
class _$LoginStateEventCopyWithImpl<$Res, $Val extends LoginStateEvent> implements $LoginStateEventCopyWith<$Res> {
  _$LoginStateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginIsSuccessImplCopyWith<$Res> {
  factory _$$LoginIsSuccessImplCopyWith(_$LoginIsSuccessImpl value, $Res Function(_$LoginIsSuccessImpl) then) =
      __$$LoginIsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthUser authUser});

  $AuthUserCopyWith<$Res> get authUser;
}

/// @nodoc
class __$$LoginIsSuccessImplCopyWithImpl<$Res> extends _$LoginStateEventCopyWithImpl<$Res, _$LoginIsSuccessImpl>
    implements _$$LoginIsSuccessImplCopyWith<$Res> {
  __$$LoginIsSuccessImplCopyWithImpl(_$LoginIsSuccessImpl _value, $Res Function(_$LoginIsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authUser = null,
  }) {
    return _then(_$LoginIsSuccessImpl(
      authUser: null == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as AuthUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res> get authUser {
    return $AuthUserCopyWith<$Res>(_value.authUser, (value) {
      return _then(_value.copyWith(authUser: value));
    });
  }
}

/// @nodoc

class _$LoginIsSuccessImpl implements _LoginIsSuccess {
  const _$LoginIsSuccessImpl({required this.authUser});

  @override
  final AuthUser authUser;

  @override
  String toString() {
    return 'LoginStateEvent.loginIsSuccess(authUser: $authUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginIsSuccessImpl &&
            (identical(other.authUser, authUser) || other.authUser == authUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginIsSuccessImplCopyWith<_$LoginIsSuccessImpl> get copyWith =>
      __$$LoginIsSuccessImplCopyWithImpl<_$LoginIsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUser authUser) loginIsSuccess,
    required TResult Function() setLoginScreen,
    required TResult Function() logout,
  }) {
    return loginIsSuccess(authUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthUser authUser)? loginIsSuccess,
    TResult? Function()? setLoginScreen,
    TResult? Function()? logout,
  }) {
    return loginIsSuccess?.call(authUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUser authUser)? loginIsSuccess,
    TResult Function()? setLoginScreen,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginIsSuccess != null) {
      return loginIsSuccess(authUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginIsSuccess value) loginIsSuccess,
    required TResult Function(_SetLoginScreen value) setLoginScreen,
    required TResult Function(_Logout value) logout,
  }) {
    return loginIsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult? Function(_SetLoginScreen value)? setLoginScreen,
    TResult? Function(_Logout value)? logout,
  }) {
    return loginIsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult Function(_SetLoginScreen value)? setLoginScreen,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loginIsSuccess != null) {
      return loginIsSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginIsSuccess implements LoginStateEvent {
  const factory _LoginIsSuccess({required final AuthUser authUser}) = _$LoginIsSuccessImpl;

  AuthUser get authUser;
  @JsonKey(ignore: true)
  _$$LoginIsSuccessImplCopyWith<_$LoginIsSuccessImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetLoginScreenImplCopyWith<$Res> {
  factory _$$SetLoginScreenImplCopyWith(_$SetLoginScreenImpl value, $Res Function(_$SetLoginScreenImpl) then) =
      __$$SetLoginScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetLoginScreenImplCopyWithImpl<$Res> extends _$LoginStateEventCopyWithImpl<$Res, _$SetLoginScreenImpl>
    implements _$$SetLoginScreenImplCopyWith<$Res> {
  __$$SetLoginScreenImplCopyWithImpl(_$SetLoginScreenImpl _value, $Res Function(_$SetLoginScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetLoginScreenImpl implements _SetLoginScreen {
  const _$SetLoginScreenImpl();

  @override
  String toString() {
    return 'LoginStateEvent.setLoginScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SetLoginScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUser authUser) loginIsSuccess,
    required TResult Function() setLoginScreen,
    required TResult Function() logout,
  }) {
    return setLoginScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthUser authUser)? loginIsSuccess,
    TResult? Function()? setLoginScreen,
    TResult? Function()? logout,
  }) {
    return setLoginScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUser authUser)? loginIsSuccess,
    TResult Function()? setLoginScreen,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (setLoginScreen != null) {
      return setLoginScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginIsSuccess value) loginIsSuccess,
    required TResult Function(_SetLoginScreen value) setLoginScreen,
    required TResult Function(_Logout value) logout,
  }) {
    return setLoginScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult? Function(_SetLoginScreen value)? setLoginScreen,
    TResult? Function(_Logout value)? logout,
  }) {
    return setLoginScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult Function(_SetLoginScreen value)? setLoginScreen,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (setLoginScreen != null) {
      return setLoginScreen(this);
    }
    return orElse();
  }
}

abstract class _SetLoginScreen implements LoginStateEvent {
  const factory _SetLoginScreen() = _$SetLoginScreenImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(_$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res> extends _$LoginStateEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(_$LogoutImpl _value, $Res Function(_$LogoutImpl) _then) : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'LoginStateEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthUser authUser) loginIsSuccess,
    required TResult Function() setLoginScreen,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthUser authUser)? loginIsSuccess,
    TResult? Function()? setLoginScreen,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthUser authUser)? loginIsSuccess,
    TResult Function()? setLoginScreen,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginIsSuccess value) loginIsSuccess,
    required TResult Function(_SetLoginScreen value) setLoginScreen,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult? Function(_SetLoginScreen value)? setLoginScreen,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginIsSuccess value)? loginIsSuccess,
    TResult Function(_SetLoginScreen value)? setLoginScreen,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements LoginStateEvent {
  const factory _Logout() = _$LogoutImpl;
}

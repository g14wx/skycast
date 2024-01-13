// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attemptLogin,
    required TResult Function() resetLoginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attemptLogin,
    TResult? Function()? resetLoginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attemptLogin,
    TResult Function()? resetLoginState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttemptLogin value) attemptLogin,
    required TResult Function(_ResetLoginState value) resetLoginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttemptLogin value)? attemptLogin,
    TResult? Function(_ResetLoginState value)? resetLoginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttemptLogin value)? attemptLogin,
    TResult Function(_ResetLoginState value)? resetLoginState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AttemptLoginImplCopyWith<$Res> {
  factory _$$AttemptLoginImplCopyWith(_$AttemptLoginImpl value, $Res Function(_$AttemptLoginImpl) then) =
      __$$AttemptLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttemptLoginImplCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res, _$AttemptLoginImpl>
    implements _$$AttemptLoginImplCopyWith<$Res> {
  __$$AttemptLoginImplCopyWithImpl(_$AttemptLoginImpl _value, $Res Function(_$AttemptLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AttemptLoginImpl implements _AttemptLogin {
  const _$AttemptLoginImpl();

  @override
  String toString() {
    return 'LoginEvent.attemptLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AttemptLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attemptLogin,
    required TResult Function() resetLoginState,
  }) {
    return attemptLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attemptLogin,
    TResult? Function()? resetLoginState,
  }) {
    return attemptLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attemptLogin,
    TResult Function()? resetLoginState,
    required TResult orElse(),
  }) {
    if (attemptLogin != null) {
      return attemptLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttemptLogin value) attemptLogin,
    required TResult Function(_ResetLoginState value) resetLoginState,
  }) {
    return attemptLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttemptLogin value)? attemptLogin,
    TResult? Function(_ResetLoginState value)? resetLoginState,
  }) {
    return attemptLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttemptLogin value)? attemptLogin,
    TResult Function(_ResetLoginState value)? resetLoginState,
    required TResult orElse(),
  }) {
    if (attemptLogin != null) {
      return attemptLogin(this);
    }
    return orElse();
  }
}

abstract class _AttemptLogin implements LoginEvent {
  const factory _AttemptLogin() = _$AttemptLoginImpl;
}

/// @nodoc
abstract class _$$ResetLoginStateImplCopyWith<$Res> {
  factory _$$ResetLoginStateImplCopyWith(_$ResetLoginStateImpl value, $Res Function(_$ResetLoginStateImpl) then) =
      __$$ResetLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetLoginStateImplCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res, _$ResetLoginStateImpl>
    implements _$$ResetLoginStateImplCopyWith<$Res> {
  __$$ResetLoginStateImplCopyWithImpl(_$ResetLoginStateImpl _value, $Res Function(_$ResetLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetLoginStateImpl implements _ResetLoginState {
  const _$ResetLoginStateImpl();

  @override
  String toString() {
    return 'LoginEvent.resetLoginState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ResetLoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attemptLogin,
    required TResult Function() resetLoginState,
  }) {
    return resetLoginState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? attemptLogin,
    TResult? Function()? resetLoginState,
  }) {
    return resetLoginState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? attemptLogin,
    TResult Function()? resetLoginState,
    required TResult orElse(),
  }) {
    if (resetLoginState != null) {
      return resetLoginState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttemptLogin value) attemptLogin,
    required TResult Function(_ResetLoginState value) resetLoginState,
  }) {
    return resetLoginState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AttemptLogin value)? attemptLogin,
    TResult? Function(_ResetLoginState value)? resetLoginState,
  }) {
    return resetLoginState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttemptLogin value)? attemptLogin,
    TResult Function(_ResetLoginState value)? resetLoginState,
    required TResult orElse(),
  }) {
    if (resetLoginState != null) {
      return resetLoginState(this);
    }
    return orElse();
  }
}

abstract class _ResetLoginState implements LoginEvent {
  const factory _ResetLoginState() = _$ResetLoginStateImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool alreadyRegistered, AuthUser authUser) success,
    required TResult Function() failed,
    required TResult Function() loading,
    required TResult Function() noUserWasSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult? Function()? failed,
    TResult? Function()? loading,
    TResult? Function()? noUserWasSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult Function()? failed,
    TResult Function()? loading,
    TResult Function()? noUserWasSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoUserWasSelected value) noUserWasSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoUserWasSelected value)? noUserWasSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoUserWasSelected value)? noUserWasSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(_$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(_$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'LoginState.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool alreadyRegistered, AuthUser authUser) success,
    required TResult Function() failed,
    required TResult Function() loading,
    required TResult Function() noUserWasSelected,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult? Function()? failed,
    TResult? Function()? loading,
    TResult? Function()? noUserWasSelected,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult Function()? failed,
    TResult Function()? loading,
    TResult Function()? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoUserWasSelected value) noUserWasSelected,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoUserWasSelected value)? noUserWasSelected,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoUserWasSelected value)? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements LoginState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool alreadyRegistered, AuthUser authUser});

  $AuthUserCopyWith<$Res> get authUser;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alreadyRegistered = null,
    Object? authUser = null,
  }) {
    return _then(_$SuccessImpl(
      alreadyRegistered: null == alreadyRegistered
          ? _value.alreadyRegistered
          : alreadyRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({this.alreadyRegistered = false, required this.authUser});

  @override
  @JsonKey()
  final bool alreadyRegistered;
  @override
  final AuthUser authUser;

  @override
  String toString() {
    return 'LoginState.success(alreadyRegistered: $alreadyRegistered, authUser: $authUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.alreadyRegistered, alreadyRegistered) || other.alreadyRegistered == alreadyRegistered) &&
            (identical(other.authUser, authUser) || other.authUser == authUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alreadyRegistered, authUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool alreadyRegistered, AuthUser authUser) success,
    required TResult Function() failed,
    required TResult Function() loading,
    required TResult Function() noUserWasSelected,
  }) {
    return success(alreadyRegistered, authUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult? Function()? failed,
    TResult? Function()? loading,
    TResult? Function()? noUserWasSelected,
  }) {
    return success?.call(alreadyRegistered, authUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult Function()? failed,
    TResult Function()? loading,
    TResult Function()? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(alreadyRegistered, authUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoUserWasSelected value) noUserWasSelected,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoUserWasSelected value)? noUserWasSelected,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoUserWasSelected value)? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success({final bool alreadyRegistered, required final AuthUser authUser}) = _$SuccessImpl;

  bool get alreadyRegistered;
  AuthUser get authUser;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(_$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(_$FailedImpl _value, $Res Function(_$FailedImpl) _then) : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'LoginState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool alreadyRegistered, AuthUser authUser) success,
    required TResult Function() failed,
    required TResult Function() loading,
    required TResult Function() noUserWasSelected,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult? Function()? failed,
    TResult? Function()? loading,
    TResult? Function()? noUserWasSelected,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult Function()? failed,
    TResult Function()? loading,
    TResult Function()? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoUserWasSelected value) noUserWasSelected,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoUserWasSelected value)? noUserWasSelected,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoUserWasSelected value)? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements LoginState {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then) : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool alreadyRegistered, AuthUser authUser) success,
    required TResult Function() failed,
    required TResult Function() loading,
    required TResult Function() noUserWasSelected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult? Function()? failed,
    TResult? Function()? loading,
    TResult? Function()? noUserWasSelected,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult Function()? failed,
    TResult Function()? loading,
    TResult Function()? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoUserWasSelected value) noUserWasSelected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoUserWasSelected value)? noUserWasSelected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoUserWasSelected value)? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NoUserWasSelectedImplCopyWith<$Res> {
  factory _$$NoUserWasSelectedImplCopyWith(_$NoUserWasSelectedImpl value, $Res Function(_$NoUserWasSelectedImpl) then) =
      __$$NoUserWasSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoUserWasSelectedImplCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res, _$NoUserWasSelectedImpl>
    implements _$$NoUserWasSelectedImplCopyWith<$Res> {
  __$$NoUserWasSelectedImplCopyWithImpl(_$NoUserWasSelectedImpl _value, $Res Function(_$NoUserWasSelectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoUserWasSelectedImpl implements _NoUserWasSelected {
  const _$NoUserWasSelectedImpl();

  @override
  String toString() {
    return 'LoginState.noUserWasSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$NoUserWasSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool alreadyRegistered, AuthUser authUser) success,
    required TResult Function() failed,
    required TResult Function() loading,
    required TResult Function() noUserWasSelected,
  }) {
    return noUserWasSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult? Function()? failed,
    TResult? Function()? loading,
    TResult? Function()? noUserWasSelected,
  }) {
    return noUserWasSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool alreadyRegistered, AuthUser authUser)? success,
    TResult Function()? failed,
    TResult Function()? loading,
    TResult Function()? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (noUserWasSelected != null) {
      return noUserWasSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoUserWasSelected value) noUserWasSelected,
  }) {
    return noUserWasSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoUserWasSelected value)? noUserWasSelected,
  }) {
    return noUserWasSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoUserWasSelected value)? noUserWasSelected,
    required TResult orElse(),
  }) {
    if (noUserWasSelected != null) {
      return noUserWasSelected(this);
    }
    return orElse();
  }
}

abstract class _NoUserWasSelected implements LoginState {
  const factory _NoUserWasSelected() = _$NoUserWasSelectedImpl;
}

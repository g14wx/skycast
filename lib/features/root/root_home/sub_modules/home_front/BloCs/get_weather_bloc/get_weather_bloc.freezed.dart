// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetWeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeather,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeather,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeather,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherEvent value) getWeather,
    required TResult Function(_ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherEvent value)? getWeather,
    TResult? Function(_ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherEvent value)? getWeather,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherEventCopyWith<$Res> {
  factory $GetWeatherEventCopyWith(
          GetWeatherEvent value, $Res Function(GetWeatherEvent) then) =
      _$GetWeatherEventCopyWithImpl<$Res, GetWeatherEvent>;
}

/// @nodoc
class _$GetWeatherEventCopyWithImpl<$Res, $Val extends GetWeatherEvent>
    implements $GetWeatherEventCopyWith<$Res> {
  _$GetWeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherEventImplCopyWith<$Res> {
  factory _$$GetWeatherEventImplCopyWith(_$GetWeatherEventImpl value,
          $Res Function(_$GetWeatherEventImpl) then) =
      __$$GetWeatherEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GetWeatherEventImplCopyWithImpl<$Res>
    extends _$GetWeatherEventCopyWithImpl<$Res, _$GetWeatherEventImpl>
    implements _$$GetWeatherEventImplCopyWith<$Res> {
  __$$GetWeatherEventImplCopyWithImpl(
      _$GetWeatherEventImpl _value, $Res Function(_$GetWeatherEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetWeatherEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherEventImpl implements _GetWeatherEvent {
  const _$GetWeatherEventImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'GetWeatherEvent.getWeather(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherEventImplCopyWith<_$GetWeatherEventImpl> get copyWith =>
      __$$GetWeatherEventImplCopyWithImpl<_$GetWeatherEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeather,
    required TResult Function() resetState,
  }) {
    return getWeather(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeather,
    TResult? Function()? resetState,
  }) {
    return getWeather?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeather,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherEvent value) getWeather,
    required TResult Function(_ResetState value) resetState,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherEvent value)? getWeather,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherEvent value)? getWeather,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherEvent implements GetWeatherEvent {
  const factory _GetWeatherEvent({required final String query}) =
      _$GetWeatherEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$GetWeatherEventImplCopyWith<_$GetWeatherEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$GetWeatherEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'GetWeatherEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getWeather,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getWeather,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getWeather,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeatherEvent value) getWeather,
    required TResult Function(_ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeatherEvent value)? getWeather,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeatherEvent value)? getWeather,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements GetWeatherEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
mixin _$GetWeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherInitial,
    required TResult Function() getWeatherLoading,
    required TResult Function(CurrentWeather currentWeather) getWeatherSuccess,
    required TResult Function(String msg) getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherInitial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult? Function(String msg)? getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherInitial,
    TResult Function()? getWeatherLoading,
    TResult Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult Function(String msg)? getWeatherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherInitial value) getWeatherInitial,
    required TResult Function(GetWeatherLoading value) getWeatherLoading,
    required TResult Function(GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(GetWeatherError value) getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeatherInitial value)? getWeatherInitial,
    TResult? Function(GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(GetWeatherError value)? getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherInitial value)? getWeatherInitial,
    TResult Function(GetWeatherLoading value)? getWeatherLoading,
    TResult Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherStateCopyWith<$Res> {
  factory $GetWeatherStateCopyWith(
          GetWeatherState value, $Res Function(GetWeatherState) then) =
      _$GetWeatherStateCopyWithImpl<$Res, GetWeatherState>;
}

/// @nodoc
class _$GetWeatherStateCopyWithImpl<$Res, $Val extends GetWeatherState>
    implements $GetWeatherStateCopyWith<$Res> {
  _$GetWeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherInitialImplCopyWith<$Res> {
  factory _$$GetWeatherInitialImplCopyWith(_$GetWeatherInitialImpl value,
          $Res Function(_$GetWeatherInitialImpl) then) =
      __$$GetWeatherInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherInitialImplCopyWithImpl<$Res>
    extends _$GetWeatherStateCopyWithImpl<$Res, _$GetWeatherInitialImpl>
    implements _$$GetWeatherInitialImplCopyWith<$Res> {
  __$$GetWeatherInitialImplCopyWithImpl(_$GetWeatherInitialImpl _value,
      $Res Function(_$GetWeatherInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherInitialImpl implements GetWeatherInitial {
  const _$GetWeatherInitialImpl();

  @override
  String toString() {
    return 'GetWeatherState.getWeatherInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherInitial,
    required TResult Function() getWeatherLoading,
    required TResult Function(CurrentWeather currentWeather) getWeatherSuccess,
    required TResult Function(String msg) getWeatherError,
  }) {
    return getWeatherInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherInitial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult? Function(String msg)? getWeatherError,
  }) {
    return getWeatherInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherInitial,
    TResult Function()? getWeatherLoading,
    TResult Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult Function(String msg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherInitial != null) {
      return getWeatherInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherInitial value) getWeatherInitial,
    required TResult Function(GetWeatherLoading value) getWeatherLoading,
    required TResult Function(GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(GetWeatherError value) getWeatherError,
  }) {
    return getWeatherInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeatherInitial value)? getWeatherInitial,
    TResult? Function(GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(GetWeatherError value)? getWeatherError,
  }) {
    return getWeatherInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherInitial value)? getWeatherInitial,
    TResult Function(GetWeatherLoading value)? getWeatherLoading,
    TResult Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherInitial != null) {
      return getWeatherInitial(this);
    }
    return orElse();
  }
}

abstract class GetWeatherInitial implements GetWeatherState {
  const factory GetWeatherInitial() = _$GetWeatherInitialImpl;
}

/// @nodoc
abstract class _$$GetWeatherLoadingImplCopyWith<$Res> {
  factory _$$GetWeatherLoadingImplCopyWith(_$GetWeatherLoadingImpl value,
          $Res Function(_$GetWeatherLoadingImpl) then) =
      __$$GetWeatherLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherLoadingImplCopyWithImpl<$Res>
    extends _$GetWeatherStateCopyWithImpl<$Res, _$GetWeatherLoadingImpl>
    implements _$$GetWeatherLoadingImplCopyWith<$Res> {
  __$$GetWeatherLoadingImplCopyWithImpl(_$GetWeatherLoadingImpl _value,
      $Res Function(_$GetWeatherLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherLoadingImpl implements GetWeatherLoading {
  const _$GetWeatherLoadingImpl();

  @override
  String toString() {
    return 'GetWeatherState.getWeatherLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherInitial,
    required TResult Function() getWeatherLoading,
    required TResult Function(CurrentWeather currentWeather) getWeatherSuccess,
    required TResult Function(String msg) getWeatherError,
  }) {
    return getWeatherLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherInitial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult? Function(String msg)? getWeatherError,
  }) {
    return getWeatherLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherInitial,
    TResult Function()? getWeatherLoading,
    TResult Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult Function(String msg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherLoading != null) {
      return getWeatherLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherInitial value) getWeatherInitial,
    required TResult Function(GetWeatherLoading value) getWeatherLoading,
    required TResult Function(GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(GetWeatherError value) getWeatherError,
  }) {
    return getWeatherLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeatherInitial value)? getWeatherInitial,
    TResult? Function(GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(GetWeatherError value)? getWeatherError,
  }) {
    return getWeatherLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherInitial value)? getWeatherInitial,
    TResult Function(GetWeatherLoading value)? getWeatherLoading,
    TResult Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherLoading != null) {
      return getWeatherLoading(this);
    }
    return orElse();
  }
}

abstract class GetWeatherLoading implements GetWeatherState {
  const factory GetWeatherLoading() = _$GetWeatherLoadingImpl;
}

/// @nodoc
abstract class _$$GetWeatherSuccessImplCopyWith<$Res> {
  factory _$$GetWeatherSuccessImplCopyWith(_$GetWeatherSuccessImpl value,
          $Res Function(_$GetWeatherSuccessImpl) then) =
      __$$GetWeatherSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentWeather currentWeather});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$GetWeatherSuccessImplCopyWithImpl<$Res>
    extends _$GetWeatherStateCopyWithImpl<$Res, _$GetWeatherSuccessImpl>
    implements _$$GetWeatherSuccessImplCopyWith<$Res> {
  __$$GetWeatherSuccessImplCopyWithImpl(_$GetWeatherSuccessImpl _value,
      $Res Function(_$GetWeatherSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_$GetWeatherSuccessImpl(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value));
    });
  }
}

/// @nodoc

class _$GetWeatherSuccessImpl implements GetWeatherSuccess {
  const _$GetWeatherSuccessImpl({required this.currentWeather});

  @override
  final CurrentWeather currentWeather;

  @override
  String toString() {
    return 'GetWeatherState.getWeatherSuccess(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherSuccessImpl &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherSuccessImplCopyWith<_$GetWeatherSuccessImpl> get copyWith =>
      __$$GetWeatherSuccessImplCopyWithImpl<_$GetWeatherSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherInitial,
    required TResult Function() getWeatherLoading,
    required TResult Function(CurrentWeather currentWeather) getWeatherSuccess,
    required TResult Function(String msg) getWeatherError,
  }) {
    return getWeatherSuccess(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherInitial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult? Function(String msg)? getWeatherError,
  }) {
    return getWeatherSuccess?.call(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherInitial,
    TResult Function()? getWeatherLoading,
    TResult Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult Function(String msg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherSuccess != null) {
      return getWeatherSuccess(currentWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherInitial value) getWeatherInitial,
    required TResult Function(GetWeatherLoading value) getWeatherLoading,
    required TResult Function(GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(GetWeatherError value) getWeatherError,
  }) {
    return getWeatherSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeatherInitial value)? getWeatherInitial,
    TResult? Function(GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(GetWeatherError value)? getWeatherError,
  }) {
    return getWeatherSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherInitial value)? getWeatherInitial,
    TResult Function(GetWeatherLoading value)? getWeatherLoading,
    TResult Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherSuccess != null) {
      return getWeatherSuccess(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccess implements GetWeatherState {
  const factory GetWeatherSuccess(
      {required final CurrentWeather currentWeather}) = _$GetWeatherSuccessImpl;

  CurrentWeather get currentWeather;
  @JsonKey(ignore: true)
  _$$GetWeatherSuccessImplCopyWith<_$GetWeatherSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherErrorImplCopyWith<$Res> {
  factory _$$GetWeatherErrorImplCopyWith(_$GetWeatherErrorImpl value,
          $Res Function(_$GetWeatherErrorImpl) then) =
      __$$GetWeatherErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$GetWeatherErrorImplCopyWithImpl<$Res>
    extends _$GetWeatherStateCopyWithImpl<$Res, _$GetWeatherErrorImpl>
    implements _$$GetWeatherErrorImplCopyWith<$Res> {
  __$$GetWeatherErrorImplCopyWithImpl(
      _$GetWeatherErrorImpl _value, $Res Function(_$GetWeatherErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$GetWeatherErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherErrorImpl implements GetWeatherError {
  const _$GetWeatherErrorImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'GetWeatherState.getWeatherError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherErrorImplCopyWith<_$GetWeatherErrorImpl> get copyWith =>
      __$$GetWeatherErrorImplCopyWithImpl<_$GetWeatherErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeatherInitial,
    required TResult Function() getWeatherLoading,
    required TResult Function(CurrentWeather currentWeather) getWeatherSuccess,
    required TResult Function(String msg) getWeatherError,
  }) {
    return getWeatherError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeatherInitial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult? Function(String msg)? getWeatherError,
  }) {
    return getWeatherError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeatherInitial,
    TResult Function()? getWeatherLoading,
    TResult Function(CurrentWeather currentWeather)? getWeatherSuccess,
    TResult Function(String msg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherError != null) {
      return getWeatherError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWeatherInitial value) getWeatherInitial,
    required TResult Function(GetWeatherLoading value) getWeatherLoading,
    required TResult Function(GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(GetWeatherError value) getWeatherError,
  }) {
    return getWeatherError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWeatherInitial value)? getWeatherInitial,
    TResult? Function(GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(GetWeatherError value)? getWeatherError,
  }) {
    return getWeatherError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWeatherInitial value)? getWeatherInitial,
    TResult Function(GetWeatherLoading value)? getWeatherLoading,
    TResult Function(GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherError != null) {
      return getWeatherError(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeatherState {
  const factory GetWeatherError({required final String msg}) =
      _$GetWeatherErrorImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$GetWeatherErrorImplCopyWith<_$GetWeatherErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  LocationWeather get location => throw _privateConstructorUsedError;
  InnerCurrentWeather get current => throw _privateConstructorUsedError;
  ForecastWeather get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {LocationWeather location,
      InnerCurrentWeather current,
      ForecastWeather forecast});

  $LocationWeatherCopyWith<$Res> get location;
  $InnerCurrentWeatherCopyWith<$Res> get current;
  $ForecastWeatherCopyWith<$Res> get forecast;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationWeather,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as InnerCurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastWeather,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationWeatherCopyWith<$Res> get location {
    return $LocationWeatherCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InnerCurrentWeatherCopyWith<$Res> get current {
    return $InnerCurrentWeatherCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastWeatherCopyWith<$Res> get forecast {
    return $ForecastWeatherCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherImplCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentWeatherImplCopyWith(_$CurrentWeatherImpl value,
          $Res Function(_$CurrentWeatherImpl) then) =
      __$$CurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationWeather location,
      InnerCurrentWeather current,
      ForecastWeather forecast});

  @override
  $LocationWeatherCopyWith<$Res> get location;
  @override
  $InnerCurrentWeatherCopyWith<$Res> get current;
  @override
  $ForecastWeatherCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$CurrentWeatherImplCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentWeatherImpl>
    implements _$$CurrentWeatherImplCopyWith<$Res> {
  __$$CurrentWeatherImplCopyWithImpl(
      _$CurrentWeatherImpl _value, $Res Function(_$CurrentWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? forecast = null,
  }) {
    return _then(_$CurrentWeatherImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationWeather,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as InnerCurrentWeather,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastWeather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherImpl implements _CurrentWeather {
  const _$CurrentWeatherImpl(
      {required this.location, required this.current, required this.forecast});

  factory _$CurrentWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherImplFromJson(json);

  @override
  final LocationWeather location;
  @override
  final InnerCurrentWeather current;
  @override
  final ForecastWeather forecast;

  @override
  String toString() {
    return 'CurrentWeather(location: $location, current: $current, forecast: $forecast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current, forecast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      __$$CurrentWeatherImplCopyWithImpl<_$CurrentWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {required final LocationWeather location,
      required final InnerCurrentWeather current,
      required final ForecastWeather forecast}) = _$CurrentWeatherImpl;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherImpl.fromJson;

  @override
  LocationWeather get location;
  @override
  InnerCurrentWeather get current;
  @override
  ForecastWeather get forecast;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationWeather _$LocationWeatherFromJson(Map<String, dynamic> json) {
  return _LocationWeather.fromJson(json);
}

/// @nodoc
mixin _$LocationWeather {
  String get name => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationWeatherCopyWith<LocationWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationWeatherCopyWith<$Res> {
  factory $LocationWeatherCopyWith(
          LocationWeather value, $Res Function(LocationWeather) then) =
      _$LocationWeatherCopyWithImpl<$Res, LocationWeather>;
  @useResult
  $Res call({String name, String region, String country});
}

/// @nodoc
class _$LocationWeatherCopyWithImpl<$Res, $Val extends LocationWeather>
    implements $LocationWeatherCopyWith<$Res> {
  _$LocationWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationWeatherImplCopyWith<$Res>
    implements $LocationWeatherCopyWith<$Res> {
  factory _$$LocationWeatherImplCopyWith(_$LocationWeatherImpl value,
          $Res Function(_$LocationWeatherImpl) then) =
      __$$LocationWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String region, String country});
}

/// @nodoc
class __$$LocationWeatherImplCopyWithImpl<$Res>
    extends _$LocationWeatherCopyWithImpl<$Res, _$LocationWeatherImpl>
    implements _$$LocationWeatherImplCopyWith<$Res> {
  __$$LocationWeatherImplCopyWithImpl(
      _$LocationWeatherImpl _value, $Res Function(_$LocationWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? region = null,
    Object? country = null,
  }) {
    return _then(_$LocationWeatherImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationWeatherImpl implements _LocationWeather {
  const _$LocationWeatherImpl(
      {required this.name, required this.region, required this.country});

  factory _$LocationWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationWeatherImplFromJson(json);

  @override
  final String name;
  @override
  final String region;
  @override
  final String country;

  @override
  String toString() {
    return 'LocationWeather(name: $name, region: $region, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationWeatherImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, region, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationWeatherImplCopyWith<_$LocationWeatherImpl> get copyWith =>
      __$$LocationWeatherImplCopyWithImpl<_$LocationWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationWeatherImplToJson(
      this,
    );
  }
}

abstract class _LocationWeather implements LocationWeather {
  const factory _LocationWeather(
      {required final String name,
      required final String region,
      required final String country}) = _$LocationWeatherImpl;

  factory _LocationWeather.fromJson(Map<String, dynamic> json) =
      _$LocationWeatherImpl.fromJson;

  @override
  String get name;
  @override
  String get region;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$LocationWeatherImplCopyWith<_$LocationWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InnerCurrentWeather _$InnerCurrentWeatherFromJson(Map<String, dynamic> json) {
  return _InnerCurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$InnerCurrentWeather {
  WeatherCondition get condition => throw _privateConstructorUsedError;
  double get uv => throw _privateConstructorUsedError;
  double get wind_kph => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get temp_c => throw _privateConstructorUsedError;
  double get temp_f => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerCurrentWeatherCopyWith<InnerCurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerCurrentWeatherCopyWith<$Res> {
  factory $InnerCurrentWeatherCopyWith(
          InnerCurrentWeather value, $Res Function(InnerCurrentWeather) then) =
      _$InnerCurrentWeatherCopyWithImpl<$Res, InnerCurrentWeather>;
  @useResult
  $Res call(
      {WeatherCondition condition,
      double uv,
      double wind_kph,
      double humidity,
      double temp_c,
      double temp_f});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$InnerCurrentWeatherCopyWithImpl<$Res, $Val extends InnerCurrentWeather>
    implements $InnerCurrentWeatherCopyWith<$Res> {
  _$InnerCurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? uv = null,
    Object? wind_kph = null,
    Object? humidity = null,
    Object? temp_c = null,
    Object? temp_f = null,
  }) {
    return _then(_value.copyWith(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InnerCurrentWeatherImplCopyWith<$Res>
    implements $InnerCurrentWeatherCopyWith<$Res> {
  factory _$$InnerCurrentWeatherImplCopyWith(_$InnerCurrentWeatherImpl value,
          $Res Function(_$InnerCurrentWeatherImpl) then) =
      __$$InnerCurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherCondition condition,
      double uv,
      double wind_kph,
      double humidity,
      double temp_c,
      double temp_f});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$InnerCurrentWeatherImplCopyWithImpl<$Res>
    extends _$InnerCurrentWeatherCopyWithImpl<$Res, _$InnerCurrentWeatherImpl>
    implements _$$InnerCurrentWeatherImplCopyWith<$Res> {
  __$$InnerCurrentWeatherImplCopyWithImpl(_$InnerCurrentWeatherImpl _value,
      $Res Function(_$InnerCurrentWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? uv = null,
    Object? wind_kph = null,
    Object? humidity = null,
    Object? temp_c = null,
    Object? temp_f = null,
  }) {
    return _then(_$InnerCurrentWeatherImpl(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      temp_f: null == temp_f
          ? _value.temp_f
          : temp_f // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InnerCurrentWeatherImpl implements _InnerCurrentWeather {
  const _$InnerCurrentWeatherImpl(
      {required this.condition,
      required this.uv,
      required this.wind_kph,
      required this.humidity,
      required this.temp_c,
      required this.temp_f});

  factory _$InnerCurrentWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$InnerCurrentWeatherImplFromJson(json);

  @override
  final WeatherCondition condition;
  @override
  final double uv;
  @override
  final double wind_kph;
  @override
  final double humidity;
  @override
  final double temp_c;
  @override
  final double temp_f;

  @override
  String toString() {
    return 'InnerCurrentWeather(condition: $condition, uv: $uv, wind_kph: $wind_kph, humidity: $humidity, temp_c: $temp_c, temp_f: $temp_f)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerCurrentWeatherImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.wind_kph, wind_kph) ||
                other.wind_kph == wind_kph) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.temp_c, temp_c) || other.temp_c == temp_c) &&
            (identical(other.temp_f, temp_f) || other.temp_f == temp_f));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, condition, uv, wind_kph, humidity, temp_c, temp_f);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerCurrentWeatherImplCopyWith<_$InnerCurrentWeatherImpl> get copyWith =>
      __$$InnerCurrentWeatherImplCopyWithImpl<_$InnerCurrentWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InnerCurrentWeatherImplToJson(
      this,
    );
  }
}

abstract class _InnerCurrentWeather implements InnerCurrentWeather {
  const factory _InnerCurrentWeather(
      {required final WeatherCondition condition,
      required final double uv,
      required final double wind_kph,
      required final double humidity,
      required final double temp_c,
      required final double temp_f}) = _$InnerCurrentWeatherImpl;

  factory _InnerCurrentWeather.fromJson(Map<String, dynamic> json) =
      _$InnerCurrentWeatherImpl.fromJson;

  @override
  WeatherCondition get condition;
  @override
  double get uv;
  @override
  double get wind_kph;
  @override
  double get humidity;
  @override
  double get temp_c;
  @override
  double get temp_f;
  @override
  @JsonKey(ignore: true)
  _$$InnerCurrentWeatherImplCopyWith<_$InnerCurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
mixin _$WeatherCondition {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res, WeatherCondition>;
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res, $Val extends WeatherCondition>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionImplCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$$WeatherConditionImplCopyWith(_$WeatherConditionImpl value,
          $Res Function(_$WeatherConditionImpl) then) =
      __$$WeatherConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon, int code});
}

/// @nodoc
class __$$WeatherConditionImplCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res, _$WeatherConditionImpl>
    implements _$$WeatherConditionImplCopyWith<$Res> {
  __$$WeatherConditionImplCopyWithImpl(_$WeatherConditionImpl _value,
      $Res Function(_$WeatherConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
    Object? code = null,
  }) {
    return _then(_$WeatherConditionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionImpl implements _WeatherCondition {
  const _$WeatherConditionImpl(
      {required this.text, required this.icon, required this.code});

  factory _$WeatherConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionImplFromJson(json);

  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  @override
  String toString() {
    return 'WeatherCondition(text: $text, icon: $icon, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      __$$WeatherConditionImplCopyWithImpl<_$WeatherConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionImplToJson(
      this,
    );
  }
}

abstract class _WeatherCondition implements WeatherCondition {
  const factory _WeatherCondition(
      {required final String text,
      required final String icon,
      required final int code}) = _$WeatherConditionImpl;

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionImpl.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeather _$ForecastWeatherFromJson(Map<String, dynamic> json) {
  return _ForecastWeather.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeather {
  List<ForecastDay> get forecastday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(
          ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res, ForecastWeather>;
  @useResult
  $Res call({List<ForecastDay> forecastday});
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res, $Val extends ForecastWeather>
    implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_value.copyWith(
      forecastday: null == forecastday
          ? _value.forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastWeatherImplCopyWith<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  factory _$$ForecastWeatherImplCopyWith(_$ForecastWeatherImpl value,
          $Res Function(_$ForecastWeatherImpl) then) =
      __$$ForecastWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastDay> forecastday});
}

/// @nodoc
class __$$ForecastWeatherImplCopyWithImpl<$Res>
    extends _$ForecastWeatherCopyWithImpl<$Res, _$ForecastWeatherImpl>
    implements _$$ForecastWeatherImplCopyWith<$Res> {
  __$$ForecastWeatherImplCopyWithImpl(
      _$ForecastWeatherImpl _value, $Res Function(_$ForecastWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastday = null,
  }) {
    return _then(_$ForecastWeatherImpl(
      forecastday: null == forecastday
          ? _value._forecastday
          : forecastday // ignore: cast_nullable_to_non_nullable
              as List<ForecastDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeatherImpl implements _ForecastWeather {
  const _$ForecastWeatherImpl({required final List<ForecastDay> forecastday})
      : _forecastday = forecastday;

  factory _$ForecastWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherImplFromJson(json);

  final List<ForecastDay> _forecastday;
  @override
  List<ForecastDay> get forecastday {
    if (_forecastday is EqualUnmodifiableListView) return _forecastday;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastday);
  }

  @override
  String toString() {
    return 'ForecastWeather(forecastday: $forecastday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherImpl &&
            const DeepCollectionEquality()
                .equals(other._forecastday, _forecastday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_forecastday));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherImplCopyWith<_$ForecastWeatherImpl> get copyWith =>
      __$$ForecastWeatherImplCopyWithImpl<_$ForecastWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherImplToJson(
      this,
    );
  }
}

abstract class _ForecastWeather implements ForecastWeather {
  const factory _ForecastWeather(
      {required final List<ForecastDay> forecastday}) = _$ForecastWeatherImpl;

  factory _ForecastWeather.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherImpl.fromJson;

  @override
  List<ForecastDay> get forecastday;
  @override
  @JsonKey(ignore: true)
  _$$ForecastWeatherImplCopyWith<_$ForecastWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return _ForecastDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastDay {
  ForecastForDay get day => throw _privateConstructorUsedError;
  ForecastDayAstro get astro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayCopyWith<ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res, ForecastDay>;
  @useResult
  $Res call({ForecastForDay day, ForecastDayAstro astro});

  $ForecastForDayCopyWith<$Res> get day;
  $ForecastDayAstroCopyWith<$Res> get astro;
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res, $Val extends ForecastDay>
    implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? astro = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastForDay,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as ForecastDayAstro,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastForDayCopyWith<$Res> get day {
    return $ForecastForDayCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastDayAstroCopyWith<$Res> get astro {
    return $ForecastDayAstroCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayImplCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory _$$ForecastDayImplCopyWith(
          _$ForecastDayImpl value, $Res Function(_$ForecastDayImpl) then) =
      __$$ForecastDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastForDay day, ForecastDayAstro astro});

  @override
  $ForecastForDayCopyWith<$Res> get day;
  @override
  $ForecastDayAstroCopyWith<$Res> get astro;
}

/// @nodoc
class __$$ForecastDayImplCopyWithImpl<$Res>
    extends _$ForecastDayCopyWithImpl<$Res, _$ForecastDayImpl>
    implements _$$ForecastDayImplCopyWith<$Res> {
  __$$ForecastDayImplCopyWithImpl(
      _$ForecastDayImpl _value, $Res Function(_$ForecastDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? astro = null,
  }) {
    return _then(_$ForecastDayImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastForDay,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as ForecastDayAstro,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayImpl implements _ForecastDay {
  const _$ForecastDayImpl({required this.day, required this.astro});

  factory _$ForecastDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayImplFromJson(json);

  @override
  final ForecastForDay day;
  @override
  final ForecastDayAstro astro;

  @override
  String toString() {
    return 'ForecastDay(day: $day, astro: $astro)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.astro, astro) || other.astro == astro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, astro);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      __$$ForecastDayImplCopyWithImpl<_$ForecastDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayImplToJson(
      this,
    );
  }
}

abstract class _ForecastDay implements ForecastDay {
  const factory _ForecastDay(
      {required final ForecastForDay day,
      required final ForecastDayAstro astro}) = _$ForecastDayImpl;

  factory _ForecastDay.fromJson(Map<String, dynamic> json) =
      _$ForecastDayImpl.fromJson;

  @override
  ForecastForDay get day;
  @override
  ForecastDayAstro get astro;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastForDay _$ForecastForDayFromJson(Map<String, dynamic> json) {
  return _ForecastForDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastForDay {
  double get maxtemp_c => throw _privateConstructorUsedError;
  double get mintemp_c => throw _privateConstructorUsedError;
  int get daily_will_it_rain => throw _privateConstructorUsedError;
  int get daily_chance_of_rain => throw _privateConstructorUsedError;
  int get daily_will_it_snow => throw _privateConstructorUsedError;
  int get daily_chance_of_snow => throw _privateConstructorUsedError;
  WeatherCondition get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastForDayCopyWith<ForecastForDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastForDayCopyWith<$Res> {
  factory $ForecastForDayCopyWith(
          ForecastForDay value, $Res Function(ForecastForDay) then) =
      _$ForecastForDayCopyWithImpl<$Res, ForecastForDay>;
  @useResult
  $Res call(
      {double maxtemp_c,
      double mintemp_c,
      int daily_will_it_rain,
      int daily_chance_of_rain,
      int daily_will_it_snow,
      int daily_chance_of_snow,
      WeatherCondition condition});

  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class _$ForecastForDayCopyWithImpl<$Res, $Val extends ForecastForDay>
    implements $ForecastForDayCopyWith<$Res> {
  _$ForecastForDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtemp_c = null,
    Object? mintemp_c = null,
    Object? daily_will_it_rain = null,
    Object? daily_chance_of_rain = null,
    Object? daily_will_it_snow = null,
    Object? daily_chance_of_snow = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      maxtemp_c: null == maxtemp_c
          ? _value.maxtemp_c
          : maxtemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      mintemp_c: null == mintemp_c
          ? _value.mintemp_c
          : mintemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      daily_will_it_rain: null == daily_will_it_rain
          ? _value.daily_will_it_rain
          : daily_will_it_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_rain: null == daily_chance_of_rain
          ? _value.daily_chance_of_rain
          : daily_chance_of_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_will_it_snow: null == daily_will_it_snow
          ? _value.daily_will_it_snow
          : daily_will_it_snow // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_snow: null == daily_chance_of_snow
          ? _value.daily_chance_of_snow
          : daily_chance_of_snow // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get condition {
    return $WeatherConditionCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastForDayImplCopyWith<$Res>
    implements $ForecastForDayCopyWith<$Res> {
  factory _$$ForecastForDayImplCopyWith(_$ForecastForDayImpl value,
          $Res Function(_$ForecastForDayImpl) then) =
      __$$ForecastForDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double maxtemp_c,
      double mintemp_c,
      int daily_will_it_rain,
      int daily_chance_of_rain,
      int daily_will_it_snow,
      int daily_chance_of_snow,
      WeatherCondition condition});

  @override
  $WeatherConditionCopyWith<$Res> get condition;
}

/// @nodoc
class __$$ForecastForDayImplCopyWithImpl<$Res>
    extends _$ForecastForDayCopyWithImpl<$Res, _$ForecastForDayImpl>
    implements _$$ForecastForDayImplCopyWith<$Res> {
  __$$ForecastForDayImplCopyWithImpl(
      _$ForecastForDayImpl _value, $Res Function(_$ForecastForDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtemp_c = null,
    Object? mintemp_c = null,
    Object? daily_will_it_rain = null,
    Object? daily_chance_of_rain = null,
    Object? daily_will_it_snow = null,
    Object? daily_chance_of_snow = null,
    Object? condition = null,
  }) {
    return _then(_$ForecastForDayImpl(
      maxtemp_c: null == maxtemp_c
          ? _value.maxtemp_c
          : maxtemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      mintemp_c: null == mintemp_c
          ? _value.mintemp_c
          : mintemp_c // ignore: cast_nullable_to_non_nullable
              as double,
      daily_will_it_rain: null == daily_will_it_rain
          ? _value.daily_will_it_rain
          : daily_will_it_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_rain: null == daily_chance_of_rain
          ? _value.daily_chance_of_rain
          : daily_chance_of_rain // ignore: cast_nullable_to_non_nullable
              as int,
      daily_will_it_snow: null == daily_will_it_snow
          ? _value.daily_will_it_snow
          : daily_will_it_snow // ignore: cast_nullable_to_non_nullable
              as int,
      daily_chance_of_snow: null == daily_chance_of_snow
          ? _value.daily_chance_of_snow
          : daily_chance_of_snow // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastForDayImpl implements _ForecastForDay {
  const _$ForecastForDayImpl(
      {required this.maxtemp_c,
      required this.mintemp_c,
      required this.daily_will_it_rain,
      required this.daily_chance_of_rain,
      required this.daily_will_it_snow,
      required this.daily_chance_of_snow,
      required this.condition});

  factory _$ForecastForDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastForDayImplFromJson(json);

  @override
  final double maxtemp_c;
  @override
  final double mintemp_c;
  @override
  final int daily_will_it_rain;
  @override
  final int daily_chance_of_rain;
  @override
  final int daily_will_it_snow;
  @override
  final int daily_chance_of_snow;
  @override
  final WeatherCondition condition;

  @override
  String toString() {
    return 'ForecastForDay(maxtemp_c: $maxtemp_c, mintemp_c: $mintemp_c, daily_will_it_rain: $daily_will_it_rain, daily_chance_of_rain: $daily_chance_of_rain, daily_will_it_snow: $daily_will_it_snow, daily_chance_of_snow: $daily_chance_of_snow, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastForDayImpl &&
            (identical(other.maxtemp_c, maxtemp_c) ||
                other.maxtemp_c == maxtemp_c) &&
            (identical(other.mintemp_c, mintemp_c) ||
                other.mintemp_c == mintemp_c) &&
            (identical(other.daily_will_it_rain, daily_will_it_rain) ||
                other.daily_will_it_rain == daily_will_it_rain) &&
            (identical(other.daily_chance_of_rain, daily_chance_of_rain) ||
                other.daily_chance_of_rain == daily_chance_of_rain) &&
            (identical(other.daily_will_it_snow, daily_will_it_snow) ||
                other.daily_will_it_snow == daily_will_it_snow) &&
            (identical(other.daily_chance_of_snow, daily_chance_of_snow) ||
                other.daily_chance_of_snow == daily_chance_of_snow) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxtemp_c,
      mintemp_c,
      daily_will_it_rain,
      daily_chance_of_rain,
      daily_will_it_snow,
      daily_chance_of_snow,
      condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastForDayImplCopyWith<_$ForecastForDayImpl> get copyWith =>
      __$$ForecastForDayImplCopyWithImpl<_$ForecastForDayImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastForDayImplToJson(
      this,
    );
  }
}

abstract class _ForecastForDay implements ForecastForDay {
  const factory _ForecastForDay(
      {required final double maxtemp_c,
      required final double mintemp_c,
      required final int daily_will_it_rain,
      required final int daily_chance_of_rain,
      required final int daily_will_it_snow,
      required final int daily_chance_of_snow,
      required final WeatherCondition condition}) = _$ForecastForDayImpl;

  factory _ForecastForDay.fromJson(Map<String, dynamic> json) =
      _$ForecastForDayImpl.fromJson;

  @override
  double get maxtemp_c;
  @override
  double get mintemp_c;
  @override
  int get daily_will_it_rain;
  @override
  int get daily_chance_of_rain;
  @override
  int get daily_will_it_snow;
  @override
  int get daily_chance_of_snow;
  @override
  WeatherCondition get condition;
  @override
  @JsonKey(ignore: true)
  _$$ForecastForDayImplCopyWith<_$ForecastForDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastDayAstro _$ForecastDayAstroFromJson(Map<String, dynamic> json) {
  return _ForecastDayAstro.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayAstro {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  String get moonrise => throw _privateConstructorUsedError;
  String get moonset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayAstroCopyWith<ForecastDayAstro> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayAstroCopyWith<$Res> {
  factory $ForecastDayAstroCopyWith(
          ForecastDayAstro value, $Res Function(ForecastDayAstro) then) =
      _$ForecastDayAstroCopyWithImpl<$Res, ForecastDayAstro>;
  @useResult
  $Res call({String sunrise, String sunset, String moonrise, String moonset});
}

/// @nodoc
class _$ForecastDayAstroCopyWithImpl<$Res, $Val extends ForecastDayAstro>
    implements $ForecastDayAstroCopyWith<$Res> {
  _$ForecastDayAstroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastDayAstroImplCopyWith<$Res>
    implements $ForecastDayAstroCopyWith<$Res> {
  factory _$$ForecastDayAstroImplCopyWith(_$ForecastDayAstroImpl value,
          $Res Function(_$ForecastDayAstroImpl) then) =
      __$$ForecastDayAstroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sunrise, String sunset, String moonrise, String moonset});
}

/// @nodoc
class __$$ForecastDayAstroImplCopyWithImpl<$Res>
    extends _$ForecastDayAstroCopyWithImpl<$Res, _$ForecastDayAstroImpl>
    implements _$$ForecastDayAstroImplCopyWith<$Res> {
  __$$ForecastDayAstroImplCopyWithImpl(_$ForecastDayAstroImpl _value,
      $Res Function(_$ForecastDayAstroImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
  }) {
    return _then(_$ForecastDayAstroImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as String,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayAstroImpl implements _ForecastDayAstro {
  const _$ForecastDayAstroImpl(
      {required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset});

  factory _$ForecastDayAstroImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayAstroImplFromJson(json);

  @override
  final String sunrise;
  @override
  final String sunset;
  @override
  final String moonrise;
  @override
  final String moonset;

  @override
  String toString() {
    return 'ForecastDayAstro(sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayAstroImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sunrise, sunset, moonrise, moonset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayAstroImplCopyWith<_$ForecastDayAstroImpl> get copyWith =>
      __$$ForecastDayAstroImplCopyWithImpl<_$ForecastDayAstroImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayAstroImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayAstro implements ForecastDayAstro {
  const factory _ForecastDayAstro(
      {required final String sunrise,
      required final String sunset,
      required final String moonrise,
      required final String moonset}) = _$ForecastDayAstroImpl;

  factory _ForecastDayAstro.fromJson(Map<String, dynamic> json) =
      _$ForecastDayAstroImpl.fromJson;

  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  String get moonrise;
  @override
  String get moonset;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayAstroImplCopyWith<_$ForecastDayAstroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

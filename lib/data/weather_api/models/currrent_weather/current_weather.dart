import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required LocationWeather location,
    required InnerCurrentWeather current,
    required ForecastWeather forecast,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);
}

@freezed
class LocationWeather with _$LocationWeather {
  const factory LocationWeather({required String name, required String region, required String country}) =
      _LocationWeather;

  factory LocationWeather.fromJson(Map<String, dynamic> json) => _$LocationWeatherFromJson(json);
}

@freezed
class InnerCurrentWeather with _$InnerCurrentWeather {
  const factory InnerCurrentWeather(
      {required WeatherCondition condition,
      required double uv,
      required double wind_kph,
      required double humidity,
      required double temp_c,
      required double temp_f}) = _InnerCurrentWeather;

  factory InnerCurrentWeather.fromJson(Map<String, dynamic> json) => _$InnerCurrentWeatherFromJson(json);
}

@freezed
class WeatherCondition with _$WeatherCondition {
  const factory WeatherCondition({required String text, required String icon, required int code}) = _WeatherCondition;
  factory WeatherCondition.fromJson(Map<String, dynamic> json) => _$WeatherConditionFromJson(json);
}

@freezed
class ForecastWeather with _$ForecastWeather {
  const factory ForecastWeather({required List<ForecastDay> forecastday}) = _ForecastWeather;
  factory ForecastWeather.fromJson(Map<String, dynamic> json) => _$ForecastWeatherFromJson(json);
}

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required ForecastForDay day,
    required ForecastDayAstro astro,
  }) = _ForecastDay;
  factory ForecastDay.fromJson(Map<String, dynamic> json) => _$ForecastDayFromJson(json);
}

@freezed
class ForecastForDay with _$ForecastForDay {
  const factory ForecastForDay(
      {required double maxtemp_c,
      required double mintemp_c,
      required int daily_will_it_rain,
      required int daily_chance_of_rain,
      required int daily_will_it_snow,
      required int daily_chance_of_snow,
      required WeatherCondition condition}) = _ForecastForDay;
  factory ForecastForDay.fromJson(Map<String, dynamic> json) => _$ForecastForDayFromJson(json);
}

@freezed
class ForecastDayAstro with _$ForecastDayAstro {
  const factory ForecastDayAstro({
    required String sunrise,
    required String sunset,
    required String moonrise,
    required String moonset,
  }) = _ForecastDayAstro;

  factory ForecastDayAstro.fromJson(Map<String, dynamic> json) => _$ForecastDayAstroFromJson(json);
}

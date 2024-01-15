// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherImpl _$$CurrentWeatherImplFromJson(Map<String, dynamic> json) =>
    _$CurrentWeatherImpl(
      location:
          LocationWeather.fromJson(json['location'] as Map<String, dynamic>),
      current:
          InnerCurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      forecast:
          ForecastWeather.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentWeatherImplToJson(
        _$CurrentWeatherImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };

_$LocationWeatherImpl _$$LocationWeatherImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationWeatherImpl(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$LocationWeatherImplToJson(
        _$LocationWeatherImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
    };

_$InnerCurrentWeatherImpl _$$InnerCurrentWeatherImplFromJson(
        Map<String, dynamic> json) =>
    _$InnerCurrentWeatherImpl(
      condition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
      uv: (json['uv'] as num).toDouble(),
      wind_kph: (json['wind_kph'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      temp_c: (json['temp_c'] as num).toDouble(),
      temp_f: (json['temp_f'] as num).toDouble(),
    );

Map<String, dynamic> _$$InnerCurrentWeatherImplToJson(
        _$InnerCurrentWeatherImpl instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'uv': instance.uv,
      'wind_kph': instance.wind_kph,
      'humidity': instance.humidity,
      'temp_c': instance.temp_c,
      'temp_f': instance.temp_f,
    };

_$WeatherConditionImpl _$$WeatherConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionImpl(
      text: json['text'] as String,
      icon: json['icon'] as String,
      code: json['code'] as int,
    );

Map<String, dynamic> _$$WeatherConditionImplToJson(
        _$WeatherConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

_$ForecastWeatherImpl _$$ForecastWeatherImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastWeatherImpl(
      forecastday: (json['forecastday'] as List<dynamic>)
          .map((e) => ForecastDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastWeatherImplToJson(
        _$ForecastWeatherImpl instance) =>
    <String, dynamic>{
      'forecastday': instance.forecastday,
    };

_$ForecastDayImpl _$$ForecastDayImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDayImpl(
      day: ForecastForDay.fromJson(json['day'] as Map<String, dynamic>),
      astro: ForecastDayAstro.fromJson(json['astro'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastDayImplToJson(_$ForecastDayImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'astro': instance.astro,
    };

_$ForecastForDayImpl _$$ForecastForDayImplFromJson(Map<String, dynamic> json) =>
    _$ForecastForDayImpl(
      maxtemp_c: (json['maxtemp_c'] as num).toDouble(),
      mintemp_c: (json['mintemp_c'] as num).toDouble(),
      daily_will_it_rain: json['daily_will_it_rain'] as int,
      daily_chance_of_rain: json['daily_chance_of_rain'] as int,
      daily_will_it_snow: json['daily_will_it_snow'] as int,
      daily_chance_of_snow: json['daily_chance_of_snow'] as int,
      condition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastForDayImplToJson(
        _$ForecastForDayImpl instance) =>
    <String, dynamic>{
      'maxtemp_c': instance.maxtemp_c,
      'mintemp_c': instance.mintemp_c,
      'daily_will_it_rain': instance.daily_will_it_rain,
      'daily_chance_of_rain': instance.daily_chance_of_rain,
      'daily_will_it_snow': instance.daily_will_it_snow,
      'daily_chance_of_snow': instance.daily_chance_of_snow,
      'condition': instance.condition,
    };

_$ForecastDayAstroImpl _$$ForecastDayAstroImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastDayAstroImpl(
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonrise: json['moonrise'] as String,
      moonset: json['moonset'] as String,
    );

Map<String, dynamic> _$$ForecastDayAstroImplToJson(
        _$ForecastDayAstroImpl instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
    };

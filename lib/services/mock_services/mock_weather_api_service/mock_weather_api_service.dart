import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/data/weather_api/models/currrent_weather/current_weather.dart';
import 'package:skycast/data/weather_api/protocols/i_weather_api_service.dart';

@Injectable(as: IWeatherApiService, env: [Env.test])
class MockWeatherApiService implements IWeatherApiService {
  @override
  Future<Either<Exception, List<ConditionTranslation>>>
      getTranslationsForConditions() async {
    return const Right([
      ConditionTranslation(code: 1000, day: "", night: "", icon: 1, languages: [
        ConditionTranslationLanguages(
            lang_name: "", lang_iso: "", day_text: "", night_text: "")
      ])
    ]);
  }

  @override
  Future<Either<Exception, CurrentWeather>> getWeather(
      {required String query}) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(CurrentWeather(
        current: const InnerCurrentWeather(
          condition: WeatherCondition(code: 1000, icon: "113", text: ""),
          humidity: 10.0,
          temp_c: 11.0,
          temp_f: 12.0,
          uv: 9.0,
          wind_kph: 14.9,
        ),
        location: LocationWeather(
            name: query, region: "Region name", country: "El Salvador"),
        forecast: const ForecastWeather(forecastday: [
          ForecastDay(
              day: ForecastForDay(
                  maxtemp_c: 30.0,
                  mintemp_c: 31.0,
                  daily_will_it_rain: 1,
                  daily_chance_of_rain: 1,
                  daily_will_it_snow: 0,
                  daily_chance_of_snow: 0,
                  condition:
                      WeatherCondition(text: "", icon: "113", code: 1000)),
              astro: ForecastDayAstro(
                  sunrise: '10:00 a.m',
                  sunset: '6:00 p.m',
                  moonrise: '6:30 p.m',
                  moonset: '9:30 a.m'))
        ])));
  }
}

import 'package:dartz/dartz.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/data/weather_api/models/currrent_weather/current_weather.dart';

abstract class IWeatherApiService {
  Future<Either<Exception, List<ConditionTranslation>>> getTranslationsForConditions();
  Future<Either<Exception, CurrentWeather>> getWeather({required String query});
}

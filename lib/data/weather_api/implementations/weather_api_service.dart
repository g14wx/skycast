import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/data/weather_api/models/currrent_weather/current_weather.dart';
import 'package:skycast/data/weather_api/protocols/i_weather_api_requests.dart';
import 'package:skycast/data/weather_api/protocols/i_weather_api_service.dart';

@Injectable(as: IWeatherApiService, env: [Env.local, Env.production, Env.staging])
class WeatherApiService implements IWeatherApiService {
  final IWeatherApiRequests _iWeatherApiRequests;

  WeatherApiService(this._iWeatherApiRequests);
  @override
  Future<Either<Exception, List<ConditionTranslation>>> getTranslationsForConditions() async {
    final results = await _iWeatherApiRequests.getTranslationsForConditions();
    if (results.isLeft()) {
      return Left(results.fold((l) => l, (r) => null)!);
    }

    try {
      final jsonListSuccess = results.fold((l) => null, (r) => r)!;
      final conditionList = jsonListSuccess.map((json) {
        final conditionTranslation = ConditionTranslation.fromJson(json);
        return conditionTranslation;
      }).toList();
      return Right(conditionList);
    } catch (e) {
      debugPrint(e.toString());
      return Left(Exception("Parsing error"));
    }
  }

  @override
  Future<Either<Exception, CurrentWeather>> getWeather({required String query}) async {
    final result = await _iWeatherApiRequests.getWeather(query: query);
    // if something went wrong, then just return the exception.
    if (result.isLeft()) {
      final exception = result.fold((l) => l, (r) => null);
      return Left(exception!);
    }

    final rawJson = result.fold((l) => null, (r) => r)!;

    try {
      final currentWeather = CurrentWeather.fromJson(rawJson);
      return Right(currentWeather);
    } catch (e) {
      debugPrint(e.toString());
      return Left(Exception("Parsing error"));
    }
  }
}

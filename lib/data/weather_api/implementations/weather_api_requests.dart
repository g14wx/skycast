import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skycast/constants/env_variables.dart';
import 'package:skycast/data/weather_api/protocols/i_weather_api_requests.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/networking/protocols/i_api_paths.dart';
import 'package:skycast/services/networking_service/DataService/models/data_service/data_service_response.dart';
import 'package:skycast/services/networking_service/DataService/protocols/i_data_service.dart';

@Injectable(as: IWeatherApiRequests)
class WeatherApiRequests implements IWeatherApiRequests {
  late final IDataService _dataServiceHttp;
  late final IApiPaths _api;
  WeatherApiRequests(this._dataServiceHttp, this._api);

  @override
  Future<Either<Exception, List<Map<String, dynamic>>>> getTranslationsForConditions() async {
    final url = _api.baseUrlWeather.substring(4, _api.baseUrlWeather.length);
    final path = _api.pathConditions;

    final result = await _dataServiceHttp.get(url: "www.$url", path: path);
    final rawResult = result.fold((exception) => exception, (data) => data);
    // if it is left then just send back the error that data service catch
    if (result.isLeft()) {
      return Left(Exception(rawResult));
    }

    final response = rawResult as DataServiceResponse;
    late final List<Map<String, dynamic>> listCastedResponse;

    try {
      if (response.data is Iterable) {
        final dynamicList = response.data as List<dynamic>;
        listCastedResponse = dynamicList.map((rawCondition) => rawCondition as Map<String, dynamic>).toList();
      }
    } catch (e) {
      return Left(Exception(e));
    }

    // check for specific status code.
    switch (response.statusCode) {
      case HttpStatus.unauthorized:
        return Left(Exception("unauthorized"));
      case HttpStatus.unprocessableEntity:
        return Left(Exception("unprocessableEntity"));
      case HttpStatus.badRequest:
        return Left(Exception("badRequest"));
      case HttpStatus.notFound:
        return Left(Exception("notFound"));
      case HttpStatus.internalServerError:
        return Left(Exception("internalServerError"));
      case HttpStatus.ok:
        return Right(listCastedResponse);
    }

    return Left(
        Exception('Something went wrong, please try again later. Unhandled status code: ${response.statusCode}'));
  }

  @override
  Future<Either<Exception, Map<String, dynamic>>> getWeather({required String query}) async {
    final url = _api.baseUrlWeather;
    final path = "${_api.prefixApiPath}${_api.pathForecast}";
    final key = dotenv.env[EnvVariables.weatherApiKey];

    final queryParams = {"q": query, "key": key, "days": "3"};

    final result = await _dataServiceHttp.get(url: url, path: path, body: queryParams);
    final rawResult = result.fold((exception) => exception, (data) => data);
    // if it is left then just send back the error that data service catch
    if (result.isLeft()) {
      return Left(Exception(rawResult));
    }

    final response = rawResult as DataServiceResponse;
    final castedResponse = rawResult.data as Map<String, dynamic>;

    // check for specific status code.
    switch (response.statusCode) {
      case HttpStatus.unauthorized:
        return Left(Exception("unauthorized"));
      case HttpStatus.unprocessableEntity:
        return Left(Exception("unprocessableEntity"));
      case HttpStatus.badRequest:
        return Left(Exception("badRequest"));
      case HttpStatus.notFound:
        return Left(Exception("notFound"));
      case HttpStatus.internalServerError:
        return Left(Exception("internalServerError"));
      case HttpStatus.ok:
        return Right(castedResponse);
    }

    return Left(
        Exception('Something went wrong, please try again later. Unhandled status code: ${response.statusCode}'));
  }
}

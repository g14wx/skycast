import 'package:dartz/dartz.dart';

abstract class IWeatherApiRequests {
  Future<Either<Exception, List<Map<String, dynamic>>>> getTranslationsForConditions();
  Future<Either<Exception, Map<String, dynamic>>> getWeather({required String query});
}

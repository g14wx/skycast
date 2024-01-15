import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/data/weather_api/models/currrent_weather/current_weather.dart';
import 'package:skycast/data/weather_api/protocols/i_weather_api_service.dart';

@Injectable(as: IWeatherApiService, env: [Env.test])
class MockWeatherApiService implements IWeatherApiService {
  @override
  Future<Either<Exception, List<ConditionTranslation>>> getTranslationsForConditions() async {
    return const Right([
      ConditionTranslation(
          code: 1000,
          day: "",
          night: "",
          icon: 1,
          languages: [ConditionTranslationLanguages(lang_name: "", lang_iso: "", day_text: "", night_text: "")])
    ]);
  }

  @override
  Future<Either<Exception, CurrentWeather>> getWeather({required String query}) {
    // TODO: implement getWeather
    throw UnimplementedError();
  }
}

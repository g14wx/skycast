import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/networking/protocols/i_api_paths.dart';
import 'package:skycast/constants/env_variables.dart';

@Injectable(as: IApiPaths)
class ApiPaths implements IApiPaths {
  @override
  String baseUrlWeather = dotenv.env[EnvVariables.baseUrlWeather]!;

  @override
  String prefixApiPath = dotenv.env[EnvVariables.prefixApiPath]!;

  @override
  String pathConditions = dotenv.env[EnvVariables.pathConditions]!;

  @override
  String pathForecast = dotenv.env[EnvVariables.pathForecast]!;

  @override
  String baseUrlToGetMapDirections = dotenv.env[EnvVariables.baseUrlToGetMapDirections]!;

  @override
  String pathToGetSuggestionsForDirections = dotenv.env[EnvVariables.pathToGetSuggestionsForDirections]!;
}

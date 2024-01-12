import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env_variables.dart';
import 'package:skycast/services/env_variables_service/protocol/i_env_variables_service.dart';

@Injectable(as: IEnvVariablesService)
class EnvVariablesService implements IEnvVariablesService {
  @override
  String? env = dotenv.env[EnvVariables.env];
}

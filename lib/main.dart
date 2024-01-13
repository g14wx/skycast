import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/app.dart';
import 'package:skycast/constants/env.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:skycast/services/env_variables_service/implementations/env_variables_service.dart';
import 'package:skycast/services/serverless_service/protocols/i_serverless_service.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';
import 'package:skycast/services/data_storage/protocols/i_initialization_of_data_storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // load env variables
  const String envFile = Env.envFile;
  await dotenv.load(fileName: envFile);
  // get storage to make possible BloCs rehydration
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
  );
  final envService = EnvVariablesService();
  configureDependencies(envService.env!);
  // this is for make it works the next line and localize the IInitializationOfDataStorageService instance
  final getIt = GetIt.instance;
  // init secure local storage (Hive)
  final initDataStorage = getIt<IInitializationOfDataStorageService>();
  // init hive configuration storage
  await initDataStorage.initializationOfDataStorageService();

  // initialize serverless service
  final initializeServerlessService = getIt<IServerlessService>();
  await initializeServerlessService.initialize();

  runApp(const ProviderScope(child: App()));
}

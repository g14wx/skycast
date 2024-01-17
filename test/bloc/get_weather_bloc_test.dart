import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/BloCs/get_weather_bloc/get_weather_bloc.dart';
import 'package:skycast/services/data_storage/protocols/i_initialization_of_data_storage_service.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

import '../setups/local_storage/mock_hydratate_bloc.dart';

void main() {

  final binding = TestWidgetsFlutterBinding.ensureInitialized();
  initHydratedStorage();
  binding.testTextInput.register();
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(const MethodChannel('plugins.flutter.io/path_provider'), (MethodCall methodCall) async {
    return '.';
  });
  setUpAll(() async {
    HttpOverrides.global = null;
    GoogleFonts.config.allowRuntimeFetching = false;
    final file = File('test/dotenv.test');
    final envString = await file.readAsString();
    dotenv.testLoad(fileInput: envString);
    configureDependencies("test");
    // this is for make it works the next line and localize the IInitializationOfDataStorageService instance
    final getIt = GetIt.instance;
    // init secure local storage (Hive)
    final initDataStorage = getIt<IInitializationOfDataStorageService>();
    // init hive configuration storage
    await initDataStorage.initializationOfDataStorageService();
  });


  blocTest<GetWeatherBloc, GetWeatherState>(
    'Get weather result',
    build: () => getIt<GetWeatherBloc>(),
    act: (bloc) {
      bloc.add(const GetWeatherEvent.getWeather(query: "Santa Ana"));
    },

    expect: () => [
      isA<GetWeatherLoading>(),
      isA<GetWeatherSuccess>()
    ],
    wait: const Duration(seconds: 2),
  );
}
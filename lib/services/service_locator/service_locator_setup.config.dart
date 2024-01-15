// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/search_directions/implementations/search_directions_requests.dart' as _i20;
import '../../data/search_directions/implementations/search_directions_service.dart' as _i22;
import '../../data/search_directions/protocols/i_search_directions_requests.dart' as _i19;
import '../../data/search_directions/protocols/i_search_directions_service.dart' as _i21;
import '../../data/weather_api/implementations/weather_api_requests.dart' as _i28;
import '../../data/weather_api/implementations/weather_api_service.dart' as _i30;
import '../../data/weather_api/protocols/i_weather_api_requests.dart' as _i27;
import '../../data/weather_api/protocols/i_weather_api_service.dart' as _i29;
import '../../features/root/root/BloCs/weather_setup_bloc/weather_setup_bloc.dart' as _i37;
import '../../features/root/root_home/sub_modules/home_front/BloCs/get_weather_bloc/get_weather_bloc.dart' as _i38;
import '../../features/root/root_login/sub_modules/login/BloCs/login_bloc/login_bloc.dart' as _i50;
import '../../features/root/root_login/sub_modules/login/BloCs/login_state_bloc/login_state_bloc.dart' as _i51;
import '../../networking/implementations/api_paths.dart' as _i6;
import '../../networking/protocols/i_api_paths.dart' as _i5;
import '../../providers/app_settings_provider/app_settings_provider.dart' as _i46;
import '../../providers/app_settings_provider/app_settings_storage_manager/implementations/app_settings_storage_manager.dart'
    as _i40;
import '../../providers/app_settings_provider/app_settings_storage_manager/protocols/i_app_settings_storage_manager.dart'
    as _i39;
import '../../providers/auth_provider/auth_provider.dart' as _i47;
import '../../providers/auth_provider/auth_provider_store_manager/implementations/auth_provider_store_manager.dart'
    as _i42;
import '../../providers/auth_provider/auth_provider_store_manager/protocols/i_auth_provider_store_manager.dart' as _i41;
import '../../providers/default_provider/default_provider.dart' as _i4;
import '../../providers/weather_provider/weather_provider.dart' as _i45;
import '../../providers/weather_provider/weather_storage_manager/implementations/weather_store_manager.dart' as _i35;
import '../../providers/weather_provider/weather_storage_manager/protocols/i_weather_provider.dart' as _i32;
import '../../providers/weather_provider/weather_storage_manager/protocols/i_weather_store_manager.dart' as _i34;
import '../../router/providers/navigator_keys_provider.dart' as _i36;
import '../../shared/BloCs/default_bloc/default_bloc.dart' as _i3;
import '../../themes/default/color_schemes.g.default.dart' as _i8;
import '../../themes/default/custom_color.g.default.dart' as _i10;
import '../../themes/protocols/i_color_schema.dart' as _i7;
import '../../themes/protocols/i_custom_colors_container.dart' as _i9;
import '../data_storage/implementations/data_storage.dart' as _i14;
import '../data_storage/implementations/initialization_of_data_storage_service.dart' as _i18;
import '../data_storage/protocols/i_data_storage.dart' as _i13;
import '../data_storage/protocols/i_initialization_of_data_storage_service.dart' as _i17;
import '../env_variables_service/implementations/env_variables_service.dart' as _i16;
import '../env_variables_service/protocol/i_env_variables_service.dart' as _i15;
import '../login_service/implementations/i_login_service.dart' as _i48;
import '../login_service/protocols/login_service.dart' as _i49;
import '../map_service/implementations/map_service.dart' as _i44;
import '../map_service/protocols/i_map_service.dart' as _i43;
import '../mock_services/mock_weather_api_service/mock_weather_api_service.dart' as _i31;
import '../mock_services/mock_weather_provider/mock_weather_provider.dart' as _i33;
import '../networking_service/DataService/implementations/data_service_http.dart' as _i12;
import '../networking_service/DataService/protocols/i_data_service.dart' as _i11;
import '../serverless_data_manager_service/implementations/serverless_data_manager_service.dart' as _i24;
import '../serverless_data_manager_service/protocols/i_serverless_data_manager_service.dart' as _i23;
import '../serverless_service/protocols/i_serverless_service.dart' as _i25;
import '../serverless_service/protocols/serverless_service.dart' as _i26;

const String _production = 'production';
const String _staging = 'staging';
const String _local = 'local';
const String _test = 'test';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.DefaultBloc>(() => _i3.DefaultBloc());
  gh.factory<_i4.DefaultProvider>(() => _i4.DefaultProvider());
  gh.factory<_i5.IApiPaths>(() => _i6.ApiPaths());
  gh.factory<_i7.IColorSchema>(
    () => _i8.ColorSchemaDefault(),
    registerFor: {
      _production,
      _staging,
      _local,
      _test,
    },
  );
  gh.factory<_i9.ICustomColorsContainer>(
    () => _i10.CustomColorsContainerDefault(),
    registerFor: {
      _production,
      _staging,
      _local,
      _test,
    },
  );
  gh.factory<_i11.IDataService>(() => _i12.DataServiceHttp());
  gh.factory<_i13.IDataStorage>(() => _i14.DataStorage());
  gh.factory<_i15.IEnvVariablesService>(() => _i16.EnvVariablesService());
  gh.factory<_i17.IInitializationOfDataStorageService<dynamic>>(() => _i18.InitializationOfDataStorageService());
  gh.singleton<_i19.ISearchDirectionsRequests>(_i20.SearchDirectionsRequests(
    gh<_i11.IDataService>(),
    gh<_i5.IApiPaths>(),
  ));
  gh.singleton<_i21.ISearchDirectionsService>(_i22.SearchDirectionService(gh<_i19.ISearchDirectionsRequests>()));
  gh.factory<_i23.IServerlessDataManagerService>(() => _i24.ServerlessDataManagerService());
  gh.factory<_i25.IServerlessService>(
    () => _i26.ServerlessService(),
    registerFor: {
      _production,
      _local,
    },
  );
  gh.factory<_i27.IWeatherApiRequests>(() => _i28.WeatherApiRequests(
        gh<_i11.IDataService>(),
        gh<_i5.IApiPaths>(),
      ));
  gh.factory<_i29.IWeatherApiService>(
    () => _i30.WeatherApiService(gh<_i27.IWeatherApiRequests>()),
    registerFor: {
      _local,
      _production,
      _staging,
    },
  );
  gh.factory<_i29.IWeatherApiService>(
    () => _i31.MockWeatherApiService(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i32.IWeatherProvider>(
    () => _i33.MockWeatherProvider(),
    registerFor: {_test},
  );
  gh.factory<_i34.IWeatherStoreManager>(() => _i35.WeatherStoreManager(gh<_i13.IDataStorage>()));
  gh.factory<_i36.NavigatorKeysProvider>(() => _i36.NavigatorKeysProvider());
  gh.factory<_i37.WeatherSetupBloc>(() => _i37.WeatherSetupBloc(
        gh<_i29.IWeatherApiService>(),
        gh<_i32.IWeatherProvider>(),
      ));
  gh.factory<_i38.GetWeatherBloc>(() => _i38.GetWeatherBloc(gh<_i29.IWeatherApiService>()));
  gh.factory<_i39.IAppSettingsStorageManager>(
      () => _i40.AppSettingsStorageManager(dataStorage: gh<_i13.IDataStorage>()));
  gh.factory<_i41.IAuthProviderStoreManager>(() => _i42.AuthProviderStoreManager(gh<_i13.IDataStorage>()));
  gh.factory<_i43.IMapService>(() => _i44.MapService(gh<_i21.ISearchDirectionsService>()));
  gh.lazySingleton<_i32.IWeatherProvider>(
    () => _i45.WeatherProvider(gh<_i34.IWeatherStoreManager>()),
    registerFor: {
      _local,
      _production,
      _staging,
    },
  );
  gh.factory<_i46.AppSettingsProvider>(
      () => _i46.AppSettingsProvider(appSettingsManager: gh<_i39.IAppSettingsStorageManager>()));
  gh.factory<_i47.AuthProvider>(() => _i47.AuthProvider(gh<_i41.IAuthProviderStoreManager>()));
  gh.factory<_i48.ILoginService>(() => _i49.LoginService(gh<_i47.AuthProvider>()));
  gh.factory<_i50.LoginBloc>(() => _i50.LoginBloc(
        gh<_i48.ILoginService>(),
        gh<_i47.AuthProvider>(),
        gh<_i23.IServerlessDataManagerService>(),
      ));
  gh.factory<_i51.LoginStateBloc>(() => _i51.LoginStateBloc(gh<_i48.ILoginService>()));
  return getIt;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../BloCs/default_bloc.dart' as _i3;
import '../../features/root/root_login/sub_modules/login/BloCs/login_bloc/login_bloc.dart' as _i28;
import '../../features/root/root_login/sub_modules/login/BloCs/login_state_bloc/login_state_bloc.dart' as _i29;
import '../../providers/app_settings_provider/app_settings_provider.dart' as _i24;
import '../../providers/app_settings_provider/app_settings_storage_manager/implementations/app_settings_storage_manager.dart'
    as _i21;
import '../../providers/app_settings_provider/app_settings_storage_manager/protocols/i_app_settings_storage_manager.dart'
    as _i20;
import '../../providers/auth_provider/auth_provider.dart' as _i25;
import '../../providers/auth_provider/auth_provider_store_manager/implementations/auth_provider_store_manager.dart'
    as _i23;
import '../../providers/auth_provider/auth_provider_store_manager/protocols/i_auth_provider_store_manager.dart' as _i22;
import '../../providers/default_provider/default_provider.dart' as _i4;
import '../../router/providers/navigator_keys_provider.dart' as _i19;
import '../../themes/default/color_schemes.g.default.dart' as _i6;
import '../../themes/default/custom_color.g.default.dart' as _i8;
import '../../themes/protocols/i_color_schema.dart' as _i5;
import '../../themes/protocols/i_custom_colors_container.dart' as _i7;
import '../data_storage/implementations/data_storage.dart' as _i10;
import '../data_storage/implementations/initialization_of_data_storage_service.dart' as _i14;
import '../data_storage/protocols/i_data_storage.dart' as _i9;
import '../data_storage/protocols/i_initialization_of_data_storage_service.dart' as _i13;
import '../env_variables_service/implementations/env_variables_service.dart' as _i12;
import '../env_variables_service/protocol/i_env_variables_service.dart' as _i11;
import '../login_service/implementations/i_login_service.dart' as _i26;
import '../login_service/protocols/login_service.dart' as _i27;
import '../serverless_data_manager_service/implementations/serverless_data_manager_service.dart' as _i16;
import '../serverless_data_manager_service/protocols/i_serverless_data_manager_service.dart' as _i15;
import '../serverless_service/protocols/i_serverless_service.dart' as _i17;
import '../serverless_service/protocols/serverless_service.dart' as _i18;

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
  gh.factory<_i5.IColorSchema>(
    () => _i6.ColorSchemaDefault(),
    registerFor: {
      _production,
      _staging,
      _local,
      _test,
    },
  );
  gh.factory<_i7.ICustomColorsContainer>(
    () => _i8.CustomColorsContainerDefault(),
    registerFor: {
      _production,
      _staging,
      _local,
      _test,
    },
  );
  gh.factory<_i9.IDataStorage>(() => _i10.DataStorage());
  gh.factory<_i11.IEnvVariablesService>(() => _i12.EnvVariablesService());
  gh.factory<_i13.IInitializationOfDataStorageService<dynamic>>(() => _i14.InitializationOfDataStorageService());
  gh.factory<_i15.IServerlessDataManagerService>(() => _i16.ServerlessDataManagerService());
  gh.factory<_i17.IServerlessService>(
    () => _i18.ServerlessService(),
    registerFor: {
      _production,
      _local,
    },
  );
  gh.factory<_i19.NavigatorKeysProvider>(() => _i19.NavigatorKeysProvider());
  gh.factory<_i20.IAppSettingsStorageManager>(
      () => _i21.AppSettingsStorageManager(dataStorage: gh<_i9.IDataStorage>()));
  gh.factory<_i22.IAuthProviderStoreManager>(() => _i23.AuthProviderStoreManager(gh<_i9.IDataStorage>()));
  gh.factory<_i24.AppSettingsProvider>(
      () => _i24.AppSettingsProvider(appSettingsManager: gh<_i20.IAppSettingsStorageManager>()));
  gh.factory<_i25.AuthProvider>(() => _i25.AuthProvider(gh<_i22.IAuthProviderStoreManager>()));
  gh.factory<_i26.ILoginService>(() => _i27.LoginService(gh<_i25.AuthProvider>()));
  gh.factory<_i28.LoginBloc>(() => _i28.LoginBloc(
        gh<_i26.ILoginService>(),
        gh<_i25.AuthProvider>(),
        gh<_i15.IServerlessDataManagerService>(),
      ));
  gh.factory<_i29.LoginStateBloc>(() => _i29.LoginStateBloc(gh<_i26.ILoginService>()));
  return getIt;
}

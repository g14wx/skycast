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
import '../../providers/app_settings_provider/app_settings_provider.dart' as _i18;
import '../../providers/app_settings_provider/app_settings_storage_manager/implementations/app_settings_storage_manager.dart'
    as _i17;
import '../../providers/app_settings_provider/app_settings_storage_manager/protocols/i_app_settings_storage_manager.dart'
    as _i16;
import '../../providers/default_provider/default_provider.dart' as _i4;
import '../../router/providers/navigator_keys_provider.dart' as _i15;
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
  gh.factory<_i15.NavigatorKeysProvider>(() => _i15.NavigatorKeysProvider());
  gh.factory<_i16.IAppSettingsStorageManager>(
      () => _i17.AppSettingsStorageManager(dataStorage: gh<_i9.IDataStorage>()));
  gh.factory<_i18.AppSettingsProvider>(
      () => _i18.AppSettingsProvider(appSettingsManager: gh<_i16.IAppSettingsStorageManager>()));
  return getIt;
}

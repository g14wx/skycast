// interfaces
import 'package:skycast/providers/app_settings_provider/app_settings_storage_manager/protocols/i_app_settings_storage_manager.dart';
import 'package:skycast/services/data_storage/protocols/i_data_storage.dart';
// packages
import 'package:injectable/injectable.dart';
// constants
import 'package:skycast/constants/storage_keys.dart';

@Injectable(as: IAppSettingsStorageManager)
class AppSettingsStorageManager implements IAppSettingsStorageManager {
  final IDataStorage dataStorage;
  AppSettingsStorageManager({required this.dataStorage});
  @override
  Future<bool> saveLanguageState(String language) async {
    final result = await dataStorage.writeData(
        service: StorageKeys.appSettingsService, key: StorageKeys.language, value: language);
    return result.fold((l) => false, (r) => true);
  }

  @override
  Future<bool> saveThemeState(String theme) async {
    final result =
        await dataStorage.writeData(service: StorageKeys.appSettingsService, key: StorageKeys.theme, value: theme);
    return result.fold((l) => false, (r) => true);
  }

  @override
  Future<String?> getLanguageState() async {
    final result = await dataStorage.getData(service: StorageKeys.appSettingsService, key: StorageKeys.language);
    return result.fold((l) => null, (r) => r);
  }

  @override
  Future<String?> getThemeState() async {
    final result = await dataStorage.getData(service: StorageKeys.appSettingsService, key: StorageKeys.theme);
    return result.fold((l) => null, (r) => r);
  }
}

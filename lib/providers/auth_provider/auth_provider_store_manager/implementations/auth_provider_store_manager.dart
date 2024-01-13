import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:skycast/constants/storage_keys.dart';
import 'package:skycast/providers/auth_provider/auth_provider_store_manager/protocols/i_auth_provider_store_manager.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';
import 'package:skycast/services/data_storage/protocols/i_data_storage.dart';

@Injectable(as: IAuthProviderStoreManager)
class AuthProviderStoreManager implements IAuthProviderStoreManager {
  final IDataStorage dataStorage;

  AuthProviderStoreManager(this.dataStorage);

  @override
  Future<bool?> checkExistExistUser() async {
    final result = await dataStorage.getData(service: StorageKeys.authService, key: StorageKeys.authUser);
    return result.fold((l) => false, (json) {
      try {
        AuthUser.fromJson(json);
        return true;
      } catch (e) {
        return false;
      }
    });
  }

  @override
  Future<AuthUser?> getAuthUser() async {
    final result = await dataStorage.getData(service: StorageKeys.authService, key: StorageKeys.authUser);
    return result.fold((l) => null, (json) {
      return AuthUser.fromJson(jsonDecode(jsonEncode(json)));
    });
  }

  @override
  Future<bool> resetAuthUser() async {
    final result = await dataStorage.writeDataSecureData(
        service: StorageKeys.authService, key: StorageKeys.authService, value: null);
    return result.fold((l) => false, (r) => true);
  }

  @override
  Future<bool> saveAuthUser(AuthUser user) async {
    final result = await dataStorage.writeDataSecureData(
        service: StorageKeys.authService, key: StorageKeys.authService, value: user.toJson());
    return result.fold((l) => false, (r) => true);
  }
}

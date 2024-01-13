import 'package:skycast/providers/auth_provider/models/auth_user.dart';

abstract class IAuthProviderStoreManager {
  Future<bool> saveAuthUser(AuthUser user);
  Future<bool> resetAuthUser();
  Future<AuthUser?> getAuthUser();
  Future<bool?> checkExistExistUser();
}

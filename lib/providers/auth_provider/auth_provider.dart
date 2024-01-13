import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/providers/auth_provider/auth_provider_store_manager/protocols/i_auth_provider_store_manager.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';

@injectable
class AuthProvider extends ChangeNotifier {
  final IAuthProviderStoreManager _authProviderStoreManager;

  AuthUser? authUser;
  AuthProvider(this._authProviderStoreManager) {
    _setUp();
  }
  _setUp() async {
    final authUserResult = await _authProviderStoreManager.getAuthUser();
    authUser = authUserResult;
    notifyListeners();
  }

  setAuthUser(AuthUser user) async {
    await _authProviderStoreManager.saveAuthUser(user);
    authUser = user;
    notifyListeners();
  }

  removeAuthUser() async {
    _authProviderStoreManager.resetAuthUser();
    authUser = null;
    notifyListeners();
  }

  AuthUser? get() => authUser;
}

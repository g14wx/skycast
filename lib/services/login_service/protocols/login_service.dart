import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';
import 'package:skycast/services/login_service/implementations/i_login_service.dart';
import 'package:skycast/providers/auth_provider/auth_provider.dart' as auth_provider;

@Injectable(as: ILoginService, env: [Env.production, Env.staging, Env.local])
class LoginService implements ILoginService {
  final auth_provider.AuthProvider _authProvider;
  LoginService(this._authProvider);

  @override
  Future<AuthUser?> loginWithGoogle() async {
    try {
      if (kIsWeb) {
        GoogleAuthProvider authProvider = GoogleAuthProvider();
        final UserCredential userCredential = await FirebaseAuth.instance.signInWithPopup(authProvider);
        return AuthUser(
            email: userCredential.additionalUserInfo?.profile?["email"] ?? "no Email",
            name: userCredential.additionalUserInfo?.profile?["name"] ?? "no name",
            phoneNumber: userCredential.additionalUserInfo?.profile?["phone"] ?? "no phone",
            profilePicture: userCredential.additionalUserInfo?.profile?["picture"],
            uid: userCredential.user?.uid ?? "no uid");
      }

      const List<String> scopes = <String>[
        'https://www.googleapis.com/auth/userinfo.email',
        'https://www.googleapis.com/auth/userinfo.profile',
      ];
      final GoogleSignInAccount? googleUser = await GoogleSignIn(
              clientId:
                  Platform.isIOS ? null : "781967842563-kn1ebt29ckqag69obovl4u90qhkiub0t.apps.googleusercontent.com",
              scopes: (Platform.isIOS || Platform.isAndroid || Platform.isFuchsia) ? scopes : [])
          .signIn()
          .catchError((e) {
        return null;
      }).onError((error, stackTrace) {
        return null;
      });

      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      return AuthUser(
          email: userCredential.additionalUserInfo?.profile?["email"] ?? "no Email",
          name: userCredential.additionalUserInfo?.profile?["name"] ?? "no name",
          phoneNumber: userCredential.additionalUserInfo?.profile?["phone"] ?? "no phone",
          profilePicture: userCredential.additionalUserInfo?.profile?["picture"],
          uid: userCredential.user?.uid ?? "no uid");
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  @override
  Future<bool> logoutFromServerlessService() async {
    try {
      await FirebaseAuth.instance.signOut();
      _authProvider.removeAuthUser();
      return true;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }
}

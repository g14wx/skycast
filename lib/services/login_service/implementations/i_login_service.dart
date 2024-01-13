import 'package:skycast/providers/auth_provider/models/auth_user.dart';

abstract class ILoginService {
  Future<AuthUser?> loginWithGoogle();

  Future<bool> logoutFromServerlessService();
}

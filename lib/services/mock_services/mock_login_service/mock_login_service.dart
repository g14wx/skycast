import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';
import 'package:skycast/services/login_service/implementations/i_login_service.dart';



@Injectable(as: ILoginService, env :[Env.test])
class MockLoginService implements ILoginService {
  @override
  Future<AuthUser?> loginWithGoogle() async {
    return null;
  }

  @override
  Future<bool> logoutFromServerlessService() async {
    return true;
  }

}
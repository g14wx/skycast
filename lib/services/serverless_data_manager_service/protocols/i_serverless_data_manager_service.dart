import 'package:dartz/dartz.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';

abstract class IServerlessDataManagerService {
  saveWeatherData();
  Future<Either<bool, String>> saveUserData(AuthUser user);
  Future<AuthUser?> getUserDocumentUID(AuthUser user);
}

import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/firebase_options.dart';
import 'package:skycast/services/serverless_service/protocols/i_serverless_service.dart';

@Injectable(as: IServerlessService, env: [(Env.production), (Env.local)])
class ServerlessService implements IServerlessService {
  @override
  Future initialize() async {
    return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}

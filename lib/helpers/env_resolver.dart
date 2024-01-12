import 'package:skycast/constants/env.dart';
class EnvResolver {
  static String resolveEnv() {
    const envFromCLi = String.fromEnvironment("ENV");
    String env = Env.local;
    if (envFromCLi.isNotEmpty) {
      switch (envFromCLi) {
        case Env.production:
          env = envFromCLi;
          break;
        case Env.staging:
          env = Env.staging;
          break;
      }
    }
    return env;
  }
}

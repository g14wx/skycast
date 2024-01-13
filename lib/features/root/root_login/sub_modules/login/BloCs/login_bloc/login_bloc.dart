import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';
import 'package:skycast/services/login_service/implementations/i_login_service.dart';
import 'package:skycast/providers/auth_provider/auth_provider.dart' as auth_provider;
import 'package:skycast/services/serverless_data_manager_service/protocols/i_serverless_data_manager_service.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginService _loginService;
  final auth_provider.AuthProvider _authProvider;

  final IServerlessDataManagerService _serverlessDataManagerService;
  LoginBloc(this._loginService, this._authProvider, this._serverlessDataManagerService)
      : super(const LoginState.initialState()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        attemptLogin: (value) async {
          emit(const LoginState.loading());
          try {
            var userResult = await _loginService.loginWithGoogle();
            if (userResult != null) {
              final result = await _serverlessDataManagerService.saveUserData(userResult);
              if (result.isRight()) {
                final String resultUserData = result.fold((l) => null, (id) => id)!;
                userResult = userResult.copyWith(docId: resultUserData);
              }
              await _authProvider.setAuthUser(userResult);
              emit(LoginState.success(alreadyRegistered: result.isLeft(), authUser: userResult));
            }
          } catch (e) {
            emit(const LoginState.noUserWasSelected());
          }
        },
        resetLoginState: (value) {
          emit(const LoginState.initialState());
        },
      );
    });
  }
}

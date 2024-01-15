import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';
import 'package:skycast/services/login_service/implementations/i_login_service.dart';

part 'login_state_event.dart';

part 'login_state_state.dart';

part 'login_state_bloc.freezed.dart';

@lazySingleton
class LoginStateBloc extends HydratedBloc<LoginStateEvent, LoginStateState> {
  final ILoginService _loginService;

  LoginStateBloc(this._loginService) : super(LoginStateInitial()) {
    on<LoginStateEvent>((event, emit) async {
      await event.map(
        loginIsSuccess: (value) async {
          emit(LoginStateSuccess(authUser: value.authUser));
        },
        setLoginScreen: (value) async {
          emit(LoginStateInitial());
        },
        logout: (_Logout value) async {
          final bool result = await _loginService.logoutFromServerlessService();
          if (result) {
            emit(LoginStateInitial());
          }
        },
      );
    });
  }

  @override
  LoginStateState? fromJson(Map<String, dynamic> json) {
    try {
      final authUser = AuthUser.fromJson(json);
      return LoginStateSuccess(authUser: authUser);
    } catch (_) {
      return LoginStateInitial();
    }
  }

  @override
  Map<String, dynamic>? toJson(LoginStateState state) {
    if (state is LoginStateSuccess) {
      return state.authUser.toJson();
    } else {
      return {};
    }
  }
}

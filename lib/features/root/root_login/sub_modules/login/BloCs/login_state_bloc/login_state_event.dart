part of 'login_state_bloc.dart';

@freezed
class LoginStateEvent with _$LoginStateEvent {
  const factory LoginStateEvent.loginIsSuccess({required AuthUser authUser}) = _LoginIsSuccess;
  const factory LoginStateEvent.setLoginScreen() = _SetLoginScreen;
  const factory LoginStateEvent.logout() = _Logout;
}

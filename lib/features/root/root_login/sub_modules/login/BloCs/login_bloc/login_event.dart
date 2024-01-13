part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.attemptLogin() = _AttemptLogin;
  const factory LoginEvent.resetLoginState() = _ResetLoginState;
}

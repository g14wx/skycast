part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initialState() = _InitialState;
  const factory LoginState.success({@Default(false) bool alreadyRegistered, required AuthUser authUser}) = _Success;
  const factory LoginState.failed() = _Failed;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.noUserWasSelected() = _NoUserWasSelected;
}

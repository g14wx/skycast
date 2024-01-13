part of 'login_state_bloc.dart';

@immutable
abstract class LoginStateState extends Equatable {}

class LoginStateInitial extends LoginStateState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginStateSuccess extends LoginStateState {
  final AuthUser authUser;
  LoginStateSuccess({required this.authUser});
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

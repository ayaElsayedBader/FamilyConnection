


abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {}
class LoginError extends LoginState {

  final String error;

  LoginError(  {   required this.error});
}
class RegisterLoading extends LoginState {}
class RegisterSuccess extends LoginState {}
class RegisterError extends LoginState {

  final String error;

  RegisterError(  {   required this.error});
}

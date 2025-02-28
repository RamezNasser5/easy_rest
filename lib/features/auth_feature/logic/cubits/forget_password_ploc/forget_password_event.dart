part of 'forget_password_bloc.dart';

@immutable
sealed class ForgetPasswordEvent {}

class VerifyCodeEvent extends ForgetPasswordEvent {
  final String code;
  VerifyCodeEvent({required this.code});
}

class ResetPasswordEvent extends ForgetPasswordEvent {
  final String email;
  final String password;
  final String confirmPassword;
  ResetPasswordEvent({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}

class ForgetPasswordEventEvent extends ForgetPasswordEvent {
  final String email;
  ForgetPasswordEventEvent({required this.email});
}

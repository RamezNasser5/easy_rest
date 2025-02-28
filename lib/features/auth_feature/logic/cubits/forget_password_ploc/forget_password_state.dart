part of 'forget_password_bloc.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ForgetPasswordLoading extends ForgetPasswordState {}

final class ForgetPasswordFailure extends ForgetPasswordState {
  final String errormessage;

  ForgetPasswordFailure({required this.errormessage});
}

final class ForgetPasswordSuccess extends ForgetPasswordState {
  final String message;

  ForgetPasswordSuccess({required this.message});
}

final class VerifyCodeInitial extends ForgetPasswordState {}

final class VerifyCodeLoading extends ForgetPasswordState {}

final class VerifyCodeFailure extends ForgetPasswordState {
  final String errormessage;

  VerifyCodeFailure({required this.errormessage});
}

final class VerifyCodeSuccess extends ForgetPasswordState {
  final String message;

  VerifyCodeSuccess({required this.message});
}

final class ResetPasswordInitial extends ForgetPasswordState {}

final class ResetPasswordLoading extends ForgetPasswordState {}

final class ResetPasswordFailure extends ForgetPasswordState {
  final String errormessage;

  ResetPasswordFailure({required this.errormessage});
}

final class ResetPasswordSuccess extends ForgetPasswordState {
  final String message;

  ResetPasswordSuccess({required this.message});
}

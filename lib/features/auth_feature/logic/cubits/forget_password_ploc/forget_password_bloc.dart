import 'package:easy_rest/features/auth_feature/data/repo/forget_password_repo/forget_password_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'forget_password_event.dart';
part 'forget_password_state.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc() : super(ForgetPasswordInitial()) {
    ForgetPasswordRepoImpl forgetPasswordRepoImpl = ForgetPasswordRepoImpl();
    on<ForgetPasswordEvent>((event, emit) async {
      if (event is ForgetPasswordEventEvent) {
        emit(ForgetPasswordLoading());

        final response = await forgetPasswordRepoImpl.forgetPassword(
          email: event.email,
        );

        // Success case
        if (response is Map<String, dynamic> &&
            response['status'] == 'success') {
          emit(ForgetPasswordSuccess(
            message: response['message'],
          ));
        } else {
          // Handle unexpected response format
          emit(ForgetPasswordFailure(
            errormessage: response['message'],
          ));
        }
      } else if (event is VerifyCodeEvent) {
        emit(VerifyCodeLoading());

        try {
          final response = await forgetPasswordRepoImpl.verifyCode(
            code: event.code,
          );

          // Check if the response is a Map and contains the 'status' key
          if (response is Map<String, dynamic> &&
              response['status'] == 'success') {
            emit(VerifyCodeSuccess(
              message: response['message'],
            ));
          }
          // Handle failure cases
          else if (response is Map<String, dynamic> &&
              response['message'] != null) {
            emit(VerifyCodeFailure(
              errormessage: response['message'],
            ));
            print(response['message']);
          }
          // Handle unexpected response formats
          else {
            emit(VerifyCodeFailure(
              errormessage: 'Unexpected response format',
            ));
          }
        } catch (e) {
          // Handle exceptions
          emit(VerifyCodeFailure(
            errormessage: e.toString(),
          ));
        }
      }
    });
  }
}

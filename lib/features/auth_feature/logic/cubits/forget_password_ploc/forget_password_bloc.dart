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
      }
    });
  }
}

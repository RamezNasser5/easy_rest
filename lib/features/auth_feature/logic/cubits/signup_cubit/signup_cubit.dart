import 'package:easy_rest/features/auth_feature/data/models/signup_models/signup_model.dart';
import 'package:easy_rest/features/auth_feature/data/repo/signup_repo/signup_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  SignupRepoImpl signupRepoImpl = SignupRepoImpl();

  void signup({required SignupModel signupModel}) async {
    emit(SignupLoading());
    try {
      final message = await signupRepoImpl.signUp(signupModel: signupModel);
      emit(SignupSuccess(message: message));
    } catch (e) {
      emit(SignupFailure(errormessage: e.toString()));
    }
  }
}

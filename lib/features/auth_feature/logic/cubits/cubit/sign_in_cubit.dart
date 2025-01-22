import 'package:easy_rest/features/auth_feature/data/repo/sign_in_repo/sign_in_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  SignInRepoImpl signInRepoImpl = SignInRepoImpl();

  signIn({required String email, required String password}) async {
    emit(SignInLoading());
    try {
      final response = await signInRepoImpl.signIn(
        email: email,
        password: password,
      );
      emit(SignInSuccess(token: response));
    } catch (e) {
      emit(SignInFailure(errorMessage: e.toString()));
    }
  }
}

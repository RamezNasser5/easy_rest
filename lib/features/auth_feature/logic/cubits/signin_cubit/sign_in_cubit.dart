import 'package:easy_rest/features/auth_feature/data/models/signin_model/sign_in_model.dart';
import 'package:easy_rest/features/auth_feature/data/repo/signin_repo/sign_in_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  SignInRepoImpl signInRepoImpl = SignInRepoImpl();

  signIn({required SignInModel signInModel}) async {
    emit(SignInLoading());
    try {
      final response = await signInRepoImpl.signIn(
        signInModel: signInModel,
      );
      emit(SignInSuccess(token: response['token']));
    } catch (e) {
      emit(SignInFailure(errorMessage: 'this email is not registered'));
    }
  }
}

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
      if (response is String) {
        emit(SignInSuccess(token: response));
      } else {
        emit(SignInFailure(errorMessage: 'Unexpected response type'));
      }
    } catch (e) {
      print(e.toString());
      emit(SignInFailure(errorMessage: 'This Email is not registered'));
    }
  }
}

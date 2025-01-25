import 'package:easy_rest/features/auth_feature/data/models/signin_model/sign_in_model.dart';

abstract class SignInRepo {
  Future<dynamic> signIn({required SignInModel signInModel});
}

import 'package:easy_rest/features/auth_feature/data/models/signup_models/signup_model.dart';

abstract class SignupRepo {
  Future<dynamic> signUp({required SignupModel signupModel});
}

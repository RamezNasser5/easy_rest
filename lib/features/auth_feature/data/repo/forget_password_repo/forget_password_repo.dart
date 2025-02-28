abstract class ForgetPasswordRepo {
  Future<dynamic> forgetPassword({
    required String email,
  });
  Future<dynamic> verifyCode({
    required String code,
  });
  Future<dynamic> resetPassword({
    required String email,
    required String password,
    required String confirmPassword,
  });
}

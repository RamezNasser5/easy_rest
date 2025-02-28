import 'package:easy_rest/core/network/services/dio_services.dart';
import 'package:easy_rest/features/auth_feature/data/repo/forget_password_repo/forget_password_repo.dart';

class ForgetPasswordRepoImpl implements ForgetPasswordRepo {
  DioServices dioServices = DioServices();
  @override
  Future<dynamic> forgetPassword({required String email}) async {
    final response = await dioServices.post(
      endPoint: 'auth/forgot-password',
      data: {'email': email},
    );

    if (response is Map<String, dynamic>) {
      return response;
    } else {
      throw Exception(
        'Unexpected response type: ${response.runtimeType}',
      );
    }
  }

  @override
  Future resetPassword(
      {required String email,
      required String password,
      required String confirmPassword}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future verifyCode({required String code}) {
    // TODO: implement verifyCode
    throw UnimplementedError();
  }
}

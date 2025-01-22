import 'package:easy_rest/core/services/dio_services.dart';
import 'package:easy_rest/features/auth_feature/data/repo/sign_in_repo/sign_in_repo.dart';

class SignInRepoImpl implements SignInRepo {
  @override
  Future<dynamic> signIn(
      {required String email, required String password}) async {
    DioServices dioServices = DioServices();

    final response = await dioServices.post(
      endPoint: 'auth/signin',
      data: {
        'email': email,
        'password': password,
      },
    );

    return response;
  }
}

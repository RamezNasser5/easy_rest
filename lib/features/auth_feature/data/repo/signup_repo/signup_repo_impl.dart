import 'package:easy_rest/core/network/services/dio_services.dart';
import 'package:easy_rest/features/auth_feature/data/models/signup_models/signup_model.dart';
import 'package:easy_rest/features/auth_feature/data/repo/signup_repo/signup_repo.dart';

class SignupRepoImpl implements SignupRepo {
  @override
  Future<dynamic> signUp({required SignupModel signupModel}) async {
    DioServices dioServices = DioServices();

    final response = await dioServices.post(
      endPoint: 'auth/signup',
      data: signupModel.toJson(),
    );

    if (response is Map<String, dynamic>) {
      return response['message'];
    }

    return response;
  }
}

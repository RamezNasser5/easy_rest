import 'package:easy_rest/core/services/dio_services.dart';
import 'package:easy_rest/features/auth_feature/data/models/sign_in_model/sign_in_model.dart';
import 'package:easy_rest/features/auth_feature/data/repo/sign_in_repo/sign_in_repo.dart';

class SignInRepoImpl implements SignInRepo {
  @override
  Future<dynamic> signIn({required SignInModel signInModel}) async {
    DioServices dioServices = DioServices();

    final response = await dioServices.post(
      endPoint: 'auth/signin',
      data: signInModel.toJson(),
    );

    return response['token'];
  }
}

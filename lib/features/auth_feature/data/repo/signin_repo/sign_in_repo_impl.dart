import 'package:easy_rest/core/network/services/dio_services.dart';
import 'package:easy_rest/features/auth_feature/data/models/signin_model/sign_in_model.dart';
import 'package:easy_rest/features/auth_feature/data/repo/signin_repo/sign_in_repo.dart';

class SignInRepoImpl implements SignInRepo {
  @override
  Future<dynamic> signIn({required SignInModel signInModel}) async {
    DioServices dioServices = DioServices();

    final response = await dioServices.post(
      endPoint: 'auth/signin',
      data: signInModel.toJson(),
    );

    print('Response: $response'); // Debugging

    if (response is Map<String, dynamic>) {
      if (response.containsKey('token')) {
        return response['token'];
      } else {
        throw Exception('Token not found in response');
      }
    } else {
      throw Exception('Unexpected response type');
    }
  }
}

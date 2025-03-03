import 'dart:convert';

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
  Future<dynamic> resetPassword({
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    final response = await dioServices.patch(
      endPoint: 'auth/reset-password',
      data: {
        'email': email,
        'password': password,
        'passwordConfirmation': confirmPassword,
      },
    );

    if (response is Map<String, dynamic>) {
      return response;
    } else {
      print('Response: $response');
      throw Exception(
        'Unexpected response type: ${response.runtimeType}',
      );
    }
  }

  @override
  Future<dynamic> verifyCode({required String code}) async {
    final response = await dioServices.patch(
      endPoint: 'auth/verify-password-reset-code',
      data: {'resetCode': code},
    );

    // Check if the response is a Map (JSON)
    if (response is Map<String, dynamic>) {
      print('Response Map: $response');
      return response;
    }
    // Check if the response is a String (plain text)
    else if (response is String) {
      try {
        print('Response json: $response');
        return jsonDecode(response);
      } catch (e) {
        print('Response Message error: $response');
        return {'message': response};
      }
    }
    // Handle unexpected response types
    else {
      throw Exception('Unexpected response type: ${response.runtimeType}');
    }
  }
}

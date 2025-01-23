import 'package:dio/dio.dart';

class DioServices {
  Dio dio = Dio();
  static String baseUrl = 'https://egroccery.onrender.com/api/v1/';

  Future post({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    final response = await dio.post(
      baseUrl + endPoint,
      data: data,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    return response.data;
  }
}

import 'package:dio/dio.dart';

class DioServices {
  Dio dio = Dio(
    BaseOptions(
      validateStatus: (status) {
        return status! < 500;
      },
    ),
  );
  static String baseUrl = 'https://egroccery.onrender.com/api/v1/';

  Future post({
    required String endPoint,
    required Map<String, dynamic> data,
  }) async {
    try {
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
    } on Exception catch (e) {
      return e.toString();
    }
  }
}

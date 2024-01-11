import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://tsoq.jabal-p.com/api/v1/',
      receiveDataWhenStatusError: true,
      validateStatus: (_) => true,
    ));
  }

  static Future<Response> getData(
      {required String url, Map<String, dynamic>? qurey, String? token}) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Authorization': token,
    };
    return await dio.get(
      url,
      queryParameters: qurey,
    );
  }

  static Future<Response> postData(
      {required String url,
      Map<String, dynamic>? qurey,
      required Object? data, //edit here for upload PDF
      String? token}) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Authorization': token,
    };
    return await dio.post(
      url,
      queryParameters: qurey,
      data: data,
    );
  }

  static Future<Response> putData(
      {required String url,
      Map<String, dynamic>? qurey,
      required Map<String, dynamic> data,
      String? token}) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    return await dio.put(
      url,
      queryParameters: qurey,
      data: data,
    );
  }
}

import 'package:dio/dio.dart';
import 'package:movies_app/helper/typedefs.dart';
import 'package:movies_app/networking/network_exception.dart';

class DioService {
  late final Dio _dio;
  DioService({required Dio dioClient}) : _dio = dioClient;
  Future<JSON> get({required String endpoint, JSON? queryParmas}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: queryParmas);
      return response.data as JSON;
    } on Exception catch (ex) {
      throw NetworkException.getDioException(ex);
    }
  }
}

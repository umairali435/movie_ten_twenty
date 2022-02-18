import 'package:dio/dio.dart';
import 'package:movies_app/helper/typedefs.dart';

abstract class ApiInterface {
  Future<List<T>> getCollectionData<T>({
    required String endpoint,
    JSON? queryparams,
    CancelToken? cancelToken,
    required T Function(JSON responseBody) converter,
  });
  Future<T> getDocumentData<T>(
      {required String endpoint,
      JSON? queryParams,
      required T Function(JSON responseBody) converter});
}

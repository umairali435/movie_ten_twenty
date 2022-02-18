import 'dart:developer';

import 'package:movies_app/helper/typedefs.dart';
import 'package:dio/src/cancel_token.dart';
import 'package:movies_app/networking/api_interface.dart';
import 'package:movies_app/networking/dio_service.dart';

class ApiService implements ApiInterface {
  late final DioService _dioService;
  ApiService(DioService dioService) : _dioService = dioService;
  @override
  Future<List<T>> getCollectionData<T>(
      {required String endpoint,
      JSON? queryparams,
      CancelToken? cancelToken,
      required T Function(JSON responseBody) converter}) async {
    final data =
        await _dioService.get(endpoint: endpoint, queryParmas: queryparams);
    final body = data['body'] as List<Object?>;
    log(body.toString());
    return body.map((dataMap) => converter(dataMap as JSON)).toList();
  }

  @override
  Future<T> getDocumentData<T>(
      {required String endpoint,
      JSON? queryParams,
      required T Function(JSON responseBody) converter}) async {
    final data = await _dioService.get(
      endpoint: endpoint,
      queryParmas: queryParams,
    );
    return converter(data as JSON);
  }
}

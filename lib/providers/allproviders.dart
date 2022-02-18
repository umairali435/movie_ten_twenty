import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/networking/api_endpoints.dart';
import 'package:movies_app/networking/api_service.dart';
import 'package:movies_app/networking/dio_service.dart';
import 'package:movies_app/providers/movies_provider.dart';
import 'package:movies_app/repositories/movies_upcomming.dart';

final _dioProvider = Provider<Dio>((ref) {
  final baseOptions = BaseOptions(
    baseUrl: ApiEndPoint.baseUrl,
  );
  return Dio(baseOptions);
});
final _dioServiceProvider = Provider<DioService>((ref) {
  // Order of interceptors very important
  final _dio = ref.watch(_dioProvider);
  return DioService(dioClient: _dio);
});
final _apiServiceProvider = Provider<ApiService>((ref) {
  final _dioService = ref.watch(_dioServiceProvider);
  return ApiService(_dioService);
});
final moviesRepository = Provider<MoviesRepository>((ref) {
  final _apiService = ref.watch(_apiServiceProvider);
  return MoviesRepository(apiService: _apiService);
});
final moviesProvider = Provider<MoviesProvider>((ref) {
  final _moviesRepository = ref.watch(moviesRepository);
  return MoviesProvider(_moviesRepository);
});

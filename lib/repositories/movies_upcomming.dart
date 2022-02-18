import 'package:movies_app/helper/typedefs.dart';
import 'package:movies_app/models/upcomming_movies.dart';
import 'package:movies_app/models/video_model.dart';
import 'package:movies_app/networking/api_endpoints.dart';
import 'package:movies_app/networking/api_service.dart';

class MoviesRepository {
  final ApiService _apiService;
  MoviesRepository({required ApiService apiService}) : _apiService = apiService;
  Future<UpcommingMovies> fetchAll(
      {JSON? queryParameters,
      String? query,
      UpcommingMoviesEndpoint? end}) async {
    return await _apiService.getDocumentData(
        queryParams: queryParameters,
        endpoint: ApiEndPoint.upcommingMovies(end!, query: query),
        converter: (responseBody) => UpcommingMovies.fromJson(responseBody));
  }

  Future<Results> fetchOne(
      {JSON? queryParameters,
      String? query,
      UpcommingMoviesEndpoint? end,
      int? movieId}) async {
    return await _apiService.getDocumentData(
        queryParams: queryParameters,
        endpoint: ApiEndPoint.upcommingMovies(end!, query: query, id: movieId),
        converter: (responseBody) => Results.fromJson(responseBody));
  }

  Future<VideoResults> fetchVideo(
      {JSON? queryParameters,
      String? query,
      UpcommingMoviesEndpoint? end,
      int? movieId}) async {
    return await _apiService.getDocumentData(
        queryParams: queryParameters,
        endpoint: ApiEndPoint.upcommingMovies(end!, query: query, id: movieId),
        converter: (responseBody) => VideoResults.fromJson(responseBody));
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_app/helper/typedefs.dart';
import 'package:movies_app/models/upcomming_movies.dart';
import 'package:movies_app/models/video_model.dart';
import 'package:movies_app/networking/api_endpoints.dart';
import 'package:movies_app/providers/allproviders.dart';
import 'package:movies_app/repositories/movies_upcomming.dart';

final moviesFuture = FutureProvider.autoDispose<UpcommingMovies>((ref) async {
  final _moviesProvider = ref.watch(moviesProvider);
  final _movieType = ref.watch(selectedMovieTypeProvider);

  return await _moviesProvider.getAllMovies(
    movieType: UpcommingMoviesEndpoint.UPCOMMMING,
  );
});
final videoFutureProvider =
    FutureProvider.family.autoDispose<VideoResults, int>((ref, id) async {
  final _moviesProvider = ref.watch(moviesProvider);
  return await _moviesProvider.getVideoData(
    movieType: UpcommingMoviesEndpoint.GETVIDEO,
    id: id,
  );
});
final moviesbySearch = FutureProvider.family
    .autoDispose<UpcommingMovies, String>((ref, query) async {
  final _moviesProvider = ref.watch(moviesProvider);
  return await _moviesProvider.getAllMoviesBySearch(
      movieType: UpcommingMoviesEndpoint.BYSEARCH, query: query);
});
final selectedMovieTypeProvider = StateProvider<UpcommingMoviesEndpoint>((ref) {
  return UpcommingMoviesEndpoint.UPCOMMMING;
});
final moviesDetailsFuture =
    FutureProvider.family.autoDispose<Results, int>((ref, id) async {
  final _moviesProvider = ref.watch(moviesProvider);
  return await _moviesProvider.getOneMovieDetails(
      movieType: UpcommingMoviesEndpoint.BYID, id: id);
});
final selectedMovieProvider = StateProvider<int?>((ref) {
  return 0;
});
final selectedUrlProvider = StateProvider<String?>((ref) {
  return '';
});

class MoviesProvider {
  final MoviesRepository _moviesRepository;
  MoviesProvider(this._moviesRepository);
  final QueryParams? queryParams = {
    'api_key': ApiEndPoint.api_key,
  };
  Future<UpcommingMovies> getAllMovies({
    UpcommingMoviesEndpoint? movieType,
  }) async {
    return await _moviesRepository.fetchAll(
        queryParameters: queryParams, query: '', end: movieType);
  }

  Future<VideoResults> getVideoData({
    UpcommingMoviesEndpoint? movieType,
    int? id,
  }) async {
    return await _moviesRepository.fetchVideo(
        queryParameters: queryParams, query: '', end: movieType, movieId: id);
  }

  Future<Results> getOneMovieDetails({
    UpcommingMoviesEndpoint? movieType,
    int? id,
  }) async {
    final QueryParams? queryParam = {
      'api_key': ApiEndPoint.api_key,
      'append_to_response': 'videos'
    };
    return await _moviesRepository.fetchOne(
        queryParameters: queryParam, query: '', end: movieType, movieId: id);
  }

  Future<UpcommingMovies> getAllMoviesBySearch({
    UpcommingMoviesEndpoint? movieType,
    String? query,
  }) async {
    final QueryParams? queryParams = {
      'api_key': ApiEndPoint.api_key,
      'query': query!,
    };
    return await _moviesRepository.fetchAll(
        queryParameters: queryParams, query: query, end: movieType);
  }
}

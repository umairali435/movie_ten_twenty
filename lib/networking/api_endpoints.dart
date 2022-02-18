import 'package:flutter/foundation.dart';

@immutable
class ApiEndPoint {
  const ApiEndPoint._();
  static const baseUrl = "https://api.themoviedb.org/3";
  static const imageUrl = "https://image.tmdb.org/t/p/w500";
  //we can use from environment for api key here
  static const api_key = "be7b54abbef18931d94debab6879b837";
  static String upcommingMovies(UpcommingMoviesEndpoint upcommingMoviesEndpoint,
      {int? id, String? query}) {
    var path = "/movie/upcoming";
    switch (upcommingMoviesEndpoint) {
      case UpcommingMoviesEndpoint.UPCOMMMING:
        return path;

      case UpcommingMoviesEndpoint.BYID:
        {
          assert(id != null, 'movieId is required for BY_ID endpoint');
          return '/movie/$id';
        }
      case UpcommingMoviesEndpoint.BYIDIMAGE:
        {
          assert(id != null, 'movieId is required for BY_ID endpoint');
          return '/$id/images';
        }
      case UpcommingMoviesEndpoint.BYSEARCH:
        assert(query != null, 'query is required for search endpoint');
        return '/search/movie';
      case UpcommingMoviesEndpoint.GETVIDEO:
        assert(id != null, 'movieId is required for BY_ID endpoint');
        return '/movie/$id/videos';
    }
  }
}

enum UpcommingMoviesEndpoint { UPCOMMMING, BYID, BYIDIMAGE, BYSEARCH, GETVIDEO }

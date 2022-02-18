import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/helper/typedefs.dart';
import 'package:movies_app/models/video_model.dart';
part 'upcomming_movies.freezed.dart';

part 'upcomming_movies.g.dart';

@freezed
class UpcommingMovies with _$UpcommingMovies {
  const UpcommingMovies._();
  const factory UpcommingMovies({
    @JsonKey(includeIfNull: false) Dates? dates,
    required int page,
    required List<Results> results,
    required int total_pages,
    required int total_results,
  }) = _UpcommingMovies;

  factory UpcommingMovies.fromJson(JSON json) =>
      _$UpcommingMoviesFromJson(json);
}

@freezed
class Dates with _$Dates {
  const factory Dates({
    required String maximum,
    required String minimum,
  }) = _Dates;

  factory Dates.fromJson(JSON json) => _$DatesFromJson(json);
}

@freezed
class Genres with _$Genres {
  const factory Genres({int? id, String? name}) = _Genres;

  factory Genres.fromJson(JSON json) => _$GenresFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    List<Genres>? genres,
    String? homepage,
    int? id,
    Videos? videos,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    bool? video,
    double? vote_average,
    int? vote_count,
  }) = _Results;
  factory Results.movieInitial() {
    return Results(
      adult: false,
      backdrop_path: '',
      genre_ids: [],
      original_language: '',
      original_title: '',
      overview: '',
      popularity: 0.0,
      poster_path: '',
      release_date: '',
      title: '',
      video: false,
      vote_average: 0.0,
      vote_count: 0,
    );
  }
  factory Results.fromJson(JSON json) => _$ResultsFromJson(json);
}

@freezed
class Videos with _$Videos {
  const factory Videos({
    List<VideoResults>? results,
  }) = _Videos;
  factory Videos.fromJson(JSON json) => _$VideosFromJson(json);
}

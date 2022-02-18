// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcomming_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpcommingMovies _$$_UpcommingMoviesFromJson(Map<String, dynamic> json) =>
    _$_UpcommingMovies(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_pages: json['total_pages'] as int,
      total_results: json['total_results'] as int,
    );

Map<String, dynamic> _$$_UpcommingMoviesToJson(_$_UpcommingMovies instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dates', instance.dates);
  val['page'] = instance.page;
  val['results'] = instance.results;
  val['total_pages'] = instance.total_pages;
  val['total_results'] = instance.total_results;
  return val;
}

_$_Dates _$$_DatesFromJson(Map<String, dynamic> json) => _$_Dates(
      maximum: json['maximum'] as String,
      minimum: json['minimum'] as String,
    );

Map<String, dynamic> _$$_DatesToJson(_$_Dates instance) => <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };

_$_Genres _$$_GenresFromJson(Map<String, dynamic> json) => _$_Genres(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_GenresToJson(_$_Genres instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      adult: json['adult'] as bool?,
      backdrop_path: json['backdrop_path'] as String?,
      genre_ids:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int?,
      videos: json['videos'] == null
          ? null
          : Videos.fromJson(json['videos'] as Map<String, dynamic>),
      original_language: json['original_language'] as String?,
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      poster_path: json['poster_path'] as String?,
      release_date: json['release_date'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
      vote_count: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'genre_ids': instance.genre_ids,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'videos': instance.videos,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };

_$_Videos _$$_VideosFromJson(Map<String, dynamic> json) => _$_Videos(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => VideoResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VideosToJson(_$_Videos instance) => <String, dynamic>{
      'results': instance.results,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upcomming_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcommingMovies _$UpcommingMoviesFromJson(Map<String, dynamic> json) {
  return _UpcommingMovies.fromJson(json);
}

/// @nodoc
class _$UpcommingMoviesTearOff {
  const _$UpcommingMoviesTearOff();

  _UpcommingMovies call(
      {@JsonKey(includeIfNull: false) Dates? dates,
      required int page,
      required List<Results> results,
      required int total_pages,
      required int total_results}) {
    return _UpcommingMovies(
      dates: dates,
      page: page,
      results: results,
      total_pages: total_pages,
      total_results: total_results,
    );
  }

  UpcommingMovies fromJson(Map<String, Object?> json) {
    return UpcommingMovies.fromJson(json);
  }
}

/// @nodoc
const $UpcommingMovies = _$UpcommingMoviesTearOff();

/// @nodoc
mixin _$UpcommingMovies {
  @JsonKey(includeIfNull: false)
  Dates? get dates => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;
  int get total_pages => throw _privateConstructorUsedError;
  int get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcommingMoviesCopyWith<UpcommingMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcommingMoviesCopyWith<$Res> {
  factory $UpcommingMoviesCopyWith(
          UpcommingMovies value, $Res Function(UpcommingMovies) then) =
      _$UpcommingMoviesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) Dates? dates,
      int page,
      List<Results> results,
      int total_pages,
      int total_results});

  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class _$UpcommingMoviesCopyWithImpl<$Res>
    implements $UpcommingMoviesCopyWith<$Res> {
  _$UpcommingMoviesCopyWithImpl(this._value, this._then);

  final UpcommingMovies _value;
  // ignore: unused_field
  final $Res Function(UpcommingMovies) _then;

  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_value.copyWith(
      dates: dates == freezed
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
      total_pages: total_pages == freezed
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $DatesCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value));
    });
  }
}

/// @nodoc
abstract class _$UpcommingMoviesCopyWith<$Res>
    implements $UpcommingMoviesCopyWith<$Res> {
  factory _$UpcommingMoviesCopyWith(
          _UpcommingMovies value, $Res Function(_UpcommingMovies) then) =
      __$UpcommingMoviesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) Dates? dates,
      int page,
      List<Results> results,
      int total_pages,
      int total_results});

  @override
  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class __$UpcommingMoviesCopyWithImpl<$Res>
    extends _$UpcommingMoviesCopyWithImpl<$Res>
    implements _$UpcommingMoviesCopyWith<$Res> {
  __$UpcommingMoviesCopyWithImpl(
      _UpcommingMovies _value, $Res Function(_UpcommingMovies) _then)
      : super(_value, (v) => _then(v as _UpcommingMovies));

  @override
  _UpcommingMovies get _value => super._value as _UpcommingMovies;

  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_UpcommingMovies(
      dates: dates == freezed
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
      total_pages: total_pages == freezed
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpcommingMovies extends _UpcommingMovies {
  const _$_UpcommingMovies(
      {@JsonKey(includeIfNull: false) this.dates,
      required this.page,
      required this.results,
      required this.total_pages,
      required this.total_results})
      : super._();

  factory _$_UpcommingMovies.fromJson(Map<String, dynamic> json) =>
      _$$_UpcommingMoviesFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final Dates? dates;
  @override
  final int page;
  @override
  final List<Results> results;
  @override
  final int total_pages;
  @override
  final int total_results;

  @override
  String toString() {
    return 'UpcommingMovies(dates: $dates, page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpcommingMovies &&
            const DeepCollectionEquality().equals(other.dates, dates) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality()
                .equals(other.total_pages, total_pages) &&
            const DeepCollectionEquality()
                .equals(other.total_results, total_results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dates),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(total_pages),
      const DeepCollectionEquality().hash(total_results));

  @JsonKey(ignore: true)
  @override
  _$UpcommingMoviesCopyWith<_UpcommingMovies> get copyWith =>
      __$UpcommingMoviesCopyWithImpl<_UpcommingMovies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpcommingMoviesToJson(this);
  }
}

abstract class _UpcommingMovies extends UpcommingMovies {
  const factory _UpcommingMovies(
      {@JsonKey(includeIfNull: false) Dates? dates,
      required int page,
      required List<Results> results,
      required int total_pages,
      required int total_results}) = _$_UpcommingMovies;
  const _UpcommingMovies._() : super._();

  factory _UpcommingMovies.fromJson(Map<String, dynamic> json) =
      _$_UpcommingMovies.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  Dates? get dates;
  @override
  int get page;
  @override
  List<Results> get results;
  @override
  int get total_pages;
  @override
  int get total_results;
  @override
  @JsonKey(ignore: true)
  _$UpcommingMoviesCopyWith<_UpcommingMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
class _$DatesTearOff {
  const _$DatesTearOff();

  _Dates call({required String maximum, required String minimum}) {
    return _Dates(
      maximum: maximum,
      minimum: minimum,
    );
  }

  Dates fromJson(Map<String, Object?> json) {
    return Dates.fromJson(json);
  }
}

/// @nodoc
const $Dates = _$DatesTearOff();

/// @nodoc
mixin _$Dates {
  String get maximum => throw _privateConstructorUsedError;
  String get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res>;
  $Res call({String maximum, String minimum});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res> implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  final Dates _value;
  // ignore: unused_field
  final $Res Function(Dates) _then;

  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      maximum: maximum == freezed
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String,
      minimum: minimum == freezed
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DatesCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$DatesCopyWith(_Dates value, $Res Function(_Dates) then) =
      __$DatesCopyWithImpl<$Res>;
  @override
  $Res call({String maximum, String minimum});
}

/// @nodoc
class __$DatesCopyWithImpl<$Res> extends _$DatesCopyWithImpl<$Res>
    implements _$DatesCopyWith<$Res> {
  __$DatesCopyWithImpl(_Dates _value, $Res Function(_Dates) _then)
      : super(_value, (v) => _then(v as _Dates));

  @override
  _Dates get _value => super._value as _Dates;

  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_Dates(
      maximum: maximum == freezed
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String,
      minimum: minimum == freezed
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dates implements _Dates {
  const _$_Dates({required this.maximum, required this.minimum});

  factory _$_Dates.fromJson(Map<String, dynamic> json) =>
      _$$_DatesFromJson(json);

  @override
  final String maximum;
  @override
  final String minimum;

  @override
  String toString() {
    return 'Dates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dates &&
            const DeepCollectionEquality().equals(other.maximum, maximum) &&
            const DeepCollectionEquality().equals(other.minimum, minimum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maximum),
      const DeepCollectionEquality().hash(minimum));

  @JsonKey(ignore: true)
  @override
  _$DatesCopyWith<_Dates> get copyWith =>
      __$DatesCopyWithImpl<_Dates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatesToJson(this);
  }
}

abstract class _Dates implements Dates {
  const factory _Dates({required String maximum, required String minimum}) =
      _$_Dates;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$_Dates.fromJson;

  @override
  String get maximum;
  @override
  String get minimum;
  @override
  @JsonKey(ignore: true)
  _$DatesCopyWith<_Dates> get copyWith => throw _privateConstructorUsedError;
}

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return _Genres.fromJson(json);
}

/// @nodoc
class _$GenresTearOff {
  const _$GenresTearOff();

  _Genres call({int? id, String? name}) {
    return _Genres(
      id: id,
      name: name,
    );
  }

  Genres fromJson(Map<String, Object?> json) {
    return Genres.fromJson(json);
  }
}

/// @nodoc
const $Genres = _$GenresTearOff();

/// @nodoc
mixin _$Genres {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresCopyWith<Genres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresCopyWith<$Res> {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) then) =
      _$GenresCopyWithImpl<$Res>;
  $Res call({int? id, String? name});
}

/// @nodoc
class _$GenresCopyWithImpl<$Res> implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._value, this._then);

  final Genres _value;
  // ignore: unused_field
  final $Res Function(Genres) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GenresCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$GenresCopyWith(_Genres value, $Res Function(_Genres) then) =
      __$GenresCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name});
}

/// @nodoc
class __$GenresCopyWithImpl<$Res> extends _$GenresCopyWithImpl<$Res>
    implements _$GenresCopyWith<$Res> {
  __$GenresCopyWithImpl(_Genres _value, $Res Function(_Genres) _then)
      : super(_value, (v) => _then(v as _Genres));

  @override
  _Genres get _value => super._value as _Genres;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Genres(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genres implements _Genres {
  const _$_Genres({this.id, this.name});

  factory _$_Genres.fromJson(Map<String, dynamic> json) =>
      _$$_GenresFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Genres(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Genres &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenresCopyWith<_Genres> get copyWith =>
      __$GenresCopyWithImpl<_Genres>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenresToJson(this);
  }
}

abstract class _Genres implements Genres {
  const factory _Genres({int? id, String? name}) = _$_Genres;

  factory _Genres.fromJson(Map<String, dynamic> json) = _$_Genres.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$GenresCopyWith<_Genres> get copyWith => throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
class _$ResultsTearOff {
  const _$ResultsTearOff();

  _Results call(
      {bool? adult,
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
      int? vote_count}) {
    return _Results(
      adult: adult,
      backdrop_path: backdrop_path,
      genre_ids: genre_ids,
      genres: genres,
      homepage: homepage,
      id: id,
      videos: videos,
      original_language: original_language,
      original_title: original_title,
      overview: overview,
      popularity: popularity,
      poster_path: poster_path,
      release_date: release_date,
      title: title,
      video: video,
      vote_average: vote_average,
      vote_count: vote_count,
    );
  }

  Results fromJson(Map<String, Object?> json) {
    return Results.fromJson(json);
  }
}

/// @nodoc
const $Results = _$ResultsTearOff();

/// @nodoc
mixin _$Results {
  bool? get adult => throw _privateConstructorUsedError;
  String? get backdrop_path => throw _privateConstructorUsedError;
  List<int>? get genre_ids => throw _privateConstructorUsedError;
  List<Genres>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  Videos? get videos => throw _privateConstructorUsedError;
  String? get original_language => throw _privateConstructorUsedError;
  String? get original_title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get release_date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  double? get vote_average => throw _privateConstructorUsedError;
  int? get vote_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res>;
  $Res call(
      {bool? adult,
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
      int? vote_count});

  $VideosCopyWith<$Res>? get videos;
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res> implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  final Results _value;
  // ignore: unused_field
  final $Res Function(Results) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? videos = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids: genre_ids == freezed
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $VideosCopyWith<$Res>? get videos {
    if (_value.videos == null) {
      return null;
    }

    return $VideosCopyWith<$Res>(_value.videos!, (value) {
      return _then(_value.copyWith(videos: value));
    });
  }
}

/// @nodoc
abstract class _$ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$ResultsCopyWith(_Results value, $Res Function(_Results) then) =
      __$ResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? adult,
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
      int? vote_count});

  @override
  $VideosCopyWith<$Res>? get videos;
}

/// @nodoc
class __$ResultsCopyWithImpl<$Res> extends _$ResultsCopyWithImpl<$Res>
    implements _$ResultsCopyWith<$Res> {
  __$ResultsCopyWithImpl(_Results _value, $Res Function(_Results) _then)
      : super(_value, (v) => _then(v as _Results));

  @override
  _Results get _value => super._value as _Results;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? videos = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_Results(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      genre_ids: genre_ids == freezed
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String?,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Results implements _Results {
  const _$_Results(
      {this.adult,
      this.backdrop_path,
      this.genre_ids,
      this.genres,
      this.homepage,
      this.id,
      this.videos,
      this.original_language,
      this.original_title,
      this.overview,
      this.popularity,
      this.poster_path,
      this.release_date,
      this.title,
      this.video,
      this.vote_average,
      this.vote_count});

  factory _$_Results.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsFromJson(json);

  @override
  final bool? adult;
  @override
  final String? backdrop_path;
  @override
  final List<int>? genre_ids;
  @override
  final List<Genres>? genres;
  @override
  final String? homepage;
  @override
  final int? id;
  @override
  final Videos? videos;
  @override
  final String? original_language;
  @override
  final String? original_title;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  final String? poster_path;
  @override
  final String? release_date;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final double? vote_average;
  @override
  final int? vote_count;

  @override
  String toString() {
    return 'Results(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, genres: $genres, homepage: $homepage, id: $id, videos: $videos, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Results &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdrop_path, backdrop_path) &&
            const DeepCollectionEquality().equals(other.genre_ids, genre_ids) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.videos, videos) &&
            const DeepCollectionEquality()
                .equals(other.original_language, original_language) &&
            const DeepCollectionEquality()
                .equals(other.original_title, original_title) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.poster_path, poster_path) &&
            const DeepCollectionEquality()
                .equals(other.release_date, release_date) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.vote_average, vote_average) &&
            const DeepCollectionEquality()
                .equals(other.vote_count, vote_count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(backdrop_path),
      const DeepCollectionEquality().hash(genre_ids),
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(homepage),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(videos),
      const DeepCollectionEquality().hash(original_language),
      const DeepCollectionEquality().hash(original_title),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(poster_path),
      const DeepCollectionEquality().hash(release_date),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(vote_average),
      const DeepCollectionEquality().hash(vote_count));

  @JsonKey(ignore: true)
  @override
  _$ResultsCopyWith<_Results> get copyWith =>
      __$ResultsCopyWithImpl<_Results>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsToJson(this);
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {bool? adult,
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
      int? vote_count}) = _$_Results;

  factory _Results.fromJson(Map<String, dynamic> json) = _$_Results.fromJson;

  @override
  bool? get adult;
  @override
  String? get backdrop_path;
  @override
  List<int>? get genre_ids;
  @override
  List<Genres>? get genres;
  @override
  String? get homepage;
  @override
  int? get id;
  @override
  Videos? get videos;
  @override
  String? get original_language;
  @override
  String? get original_title;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  String? get poster_path;
  @override
  String? get release_date;
  @override
  String? get title;
  @override
  bool? get video;
  @override
  double? get vote_average;
  @override
  int? get vote_count;
  @override
  @JsonKey(ignore: true)
  _$ResultsCopyWith<_Results> get copyWith =>
      throw _privateConstructorUsedError;
}

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
class _$VideosTearOff {
  const _$VideosTearOff();

  _Videos call({List<VideoResults>? results}) {
    return _Videos(
      results: results,
    );
  }

  Videos fromJson(Map<String, Object?> json) {
    return Videos.fromJson(json);
  }
}

/// @nodoc
const $Videos = _$VideosTearOff();

/// @nodoc
mixin _$Videos {
  List<VideoResults>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res>;
  $Res call({List<VideoResults>? results});
}

/// @nodoc
class _$VideosCopyWithImpl<$Res> implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  final Videos _value;
  // ignore: unused_field
  final $Res Function(Videos) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoResults>?,
    ));
  }
}

/// @nodoc
abstract class _$VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$VideosCopyWith(_Videos value, $Res Function(_Videos) then) =
      __$VideosCopyWithImpl<$Res>;
  @override
  $Res call({List<VideoResults>? results});
}

/// @nodoc
class __$VideosCopyWithImpl<$Res> extends _$VideosCopyWithImpl<$Res>
    implements _$VideosCopyWith<$Res> {
  __$VideosCopyWithImpl(_Videos _value, $Res Function(_Videos) _then)
      : super(_value, (v) => _then(v as _Videos));

  @override
  _Videos get _value => super._value as _Videos;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_Videos(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoResults>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Videos implements _Videos {
  const _$_Videos({this.results});

  factory _$_Videos.fromJson(Map<String, dynamic> json) =>
      _$$_VideosFromJson(json);

  @override
  final List<VideoResults>? results;

  @override
  String toString() {
    return 'Videos(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Videos &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$VideosCopyWith<_Videos> get copyWith =>
      __$VideosCopyWithImpl<_Videos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosToJson(this);
  }
}

abstract class _Videos implements Videos {
  const factory _Videos({List<VideoResults>? results}) = _$_Videos;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$_Videos.fromJson;

  @override
  List<VideoResults>? get results;
  @override
  @JsonKey(ignore: true)
  _$VideosCopyWith<_Videos> get copyWith => throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:movies_app/helper/typedefs.dart';
part 'video_model.g.dart';
part 'video_model.freezed.dart';

@freezed
class VideoResults with _$VideoResults {
  const factory VideoResults({
    String? iso6391,
    String? iso31661,
    String? name,
    String? key,
    String? site,
    int? size,
    String? type,
    bool? official,
    String? publishedAt,
  }) = _VideoResults;

  factory VideoResults.fromJson(JSON json) => _$VideoResultsFromJson(json);
}

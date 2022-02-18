// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoResults _$$_VideoResultsFromJson(Map<String, dynamic> json) =>
    _$_VideoResults(
      iso6391: json['iso6391'] as String?,
      iso31661: json['iso31661'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      site: json['site'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
      official: json['official'] as bool?,
      publishedAt: json['publishedAt'] as String?,
    );

Map<String, dynamic> _$$_VideoResultsToJson(_$_VideoResults instance) =>
    <String, dynamic>{
      'iso6391': instance.iso6391,
      'iso31661': instance.iso31661,
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'publishedAt': instance.publishedAt,
    };

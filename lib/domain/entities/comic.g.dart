// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      id: json['id'] as int,
      title: json['title'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      urls: (json['urls'] as List<dynamic>)
          .map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'urls': instance.urls,
    };

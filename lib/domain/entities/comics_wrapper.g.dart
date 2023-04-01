// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicsWrapper _$$_ComicsWrapperFromJson(Map<String, dynamic> json) =>
    _$_ComicsWrapper(
      data: PaginatedComics.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ComicsWrapperToJson(_$_ComicsWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_PaginatedComics _$$_PaginatedComicsFromJson(Map<String, dynamic> json) =>
    _$_PaginatedComics(
      results: (json['results'] as List<dynamic>)
          .map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaginatedComicsToJson(_$_PaginatedComics instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

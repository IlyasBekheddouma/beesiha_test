// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharactersWrapper _$$_CharactersWrapperFromJson(Map<String, dynamic> json) =>
    _$_CharactersWrapper(
      data: PaginatedCharacters.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CharactersWrapperToJson(
        _$_CharactersWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_PaginatedCharacters _$$_PaginatedCharactersFromJson(
        Map<String, dynamic> json) =>
    _$_PaginatedCharacters(
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaginatedCharactersToJson(
        _$_PaginatedCharacters instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

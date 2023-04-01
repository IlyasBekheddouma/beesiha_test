import 'package:beesiha_test/domain/entities/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_wrapper.freezed.dart';
part 'characters_wrapper.g.dart';

@freezed
class CharactersWrapper with _$CharactersWrapper {
  const CharactersWrapper._();

  factory CharactersWrapper({
    required PaginatedCharacters data,
  }) = _CharactersWrapper;

  factory CharactersWrapper.fromJson(Map<String, dynamic> json) =>
      _$CharactersWrapperFromJson(json);
}

@freezed
class PaginatedCharacters with _$PaginatedCharacters {
  const PaginatedCharacters._();

  const factory PaginatedCharacters({
    required List<Character> results,
  }) = _PaginatedCharacters;

  factory PaginatedCharacters.fromJson(Map<String, dynamic> json) =>
      _$PaginatedCharactersFromJson(json);
}
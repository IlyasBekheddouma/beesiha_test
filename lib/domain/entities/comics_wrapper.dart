import 'package:freezed_annotation/freezed_annotation.dart';

import 'comic.dart';

part 'comics_wrapper.freezed.dart';
part 'comics_wrapper.g.dart';

@freezed
class ComicsWrapper with _$ComicsWrapper {
  const ComicsWrapper._();

  factory ComicsWrapper({
    required PaginatedComics data,
  }) = _ComicsWrapper;

  factory ComicsWrapper.fromJson(Map<String, dynamic> json) =>
      _$ComicsWrapperFromJson(json);
}

@freezed
class PaginatedComics with _$PaginatedComics {
  const PaginatedComics._();

  const factory PaginatedComics({
    required List<Comic> results,
  }) = _PaginatedComics;

  factory PaginatedComics.fromJson(Map<String, dynamic> json) =>
      _$PaginatedComicsFromJson(json);
}
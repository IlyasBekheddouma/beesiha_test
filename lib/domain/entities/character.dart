import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const Character._();

  const factory Character({
    required int id,
    required String name,
    required String description,
    required Thumbnail thumbnail,
    required List<Url> urls,
  }) = _Character;

  String get imageUrl => '${thumbnail.path}.${thumbnail.extension}';

  String get wikiUrl {

    try {
      return urls.where((element) => element.type=='wiki').first.url;
    } catch(e) {
      return 'https://developer.marvel.com/';
    }
  }

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
class Thumbnail with _$Thumbnail {
  const Thumbnail._();

  const factory Thumbnail({
    required String path,
    required String extension,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}
@freezed
class Url with _$Url {
  const Url._();

  const factory Url({
    required String type,
    required String url,
  }) = _Url;

  factory Url.fromJson(Map<String, dynamic> json) =>
      _$UrlFromJson(json);
}
import 'package:beesiha_test/domain/entities/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic.freezed.dart';
part 'comic.g.dart';

@freezed
class Comic with _$Comic {
  const Comic._();

  const factory Comic({
    required int id,
    required String title,
    required Thumbnail thumbnail,
    required List<Url> urls,
  }) = _Comic;

  String get imageUrl => '${thumbnail.path}.${thumbnail.extension}';

  String get wikiUrl {

    try {
      return urls.where((element) => element.type=='wiki').first.url;
    } catch(e) {
      return 'https://developer.marvel.com/';
    }
  }

  factory Comic.fromJson(Map<String, dynamic> json) =>
      _$ComicFromJson(json);
}
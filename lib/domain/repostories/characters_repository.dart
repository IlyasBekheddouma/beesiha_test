import 'package:beesiha_test/domain/entities/characters_wrapper.dart';

abstract class CharactersRepository {
  Future<CharactersWrapper> getCharacters(int page);
}

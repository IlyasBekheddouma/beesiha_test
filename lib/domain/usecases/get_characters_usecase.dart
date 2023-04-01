import 'package:beesiha_test/domain/entities/character.dart';
import 'package:beesiha_test/domain/repostories/characters_repository.dart';
import 'package:beesiha_test/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCharactersUseCase extends OutputUseCase<Future<List<Character>>> {
  GetCharactersUseCase(this._charactersRepository);
  final CharactersRepository _charactersRepository;

  @override
  Future<List<Character>> call({int input = 1}) async {
    final charactersResponse = await _charactersRepository.getCharacters(input);
    return charactersResponse.data.results;
  }
}

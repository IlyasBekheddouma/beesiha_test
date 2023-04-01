import 'package:beesiha_test/domain/entities/comic.dart';
import 'package:beesiha_test/domain/repostories/comics_repository.dart';
import 'package:beesiha_test/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetComicsUseCase extends UseCase<int, Future<List<Comic>>> {
  GetComicsUseCase(this._comicsRepository);
  final ComicsRepository _comicsRepository;

  @override
  Future<List<Comic>> call(int input) async {
    final comicsResponse = await _comicsRepository.getComics(input);
    return comicsResponse.data.results;
  }
}

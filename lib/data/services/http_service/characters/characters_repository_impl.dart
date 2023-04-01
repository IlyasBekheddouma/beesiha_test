import 'package:beesiha_test/domain/entities/characters_wrapper.dart';
import 'package:beesiha_test/domain/repostories/characters_repository.dart';
import 'package:injectable/injectable.dart';

import 'source/remote/characters_remote_data_source.dart';

@LazySingleton(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  CharactersRepositoryImpl(this._contentRemoteDataSource);
  final CharactersRemoteDataSource _contentRemoteDataSource;

  @override
  Future<CharactersWrapper> getCharacters(int page) async =>
      await _contentRemoteDataSource.getCharacters(
        page*10,
      );
}

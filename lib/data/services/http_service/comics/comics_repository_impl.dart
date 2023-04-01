import 'package:beesiha_test/domain/entities/characters_wrapper.dart';
import 'package:beesiha_test/domain/entities/comics_wrapper.dart';
import 'package:beesiha_test/domain/repostories/comics_repository.dart';
import 'package:injectable/injectable.dart';

import 'source/remote/comics_remote_data_source.dart';

@LazySingleton(as: ComicsRepository)
class ComicsRepositoryImpl implements ComicsRepository {
  ComicsRepositoryImpl(this._comicsRemoteDataSource);
  final ComicsRemoteDataSource _comicsRemoteDataSource;

  @override
  Future<ComicsWrapper> getComics(int id)  async => await _comicsRemoteDataSource.getComics(id);
}

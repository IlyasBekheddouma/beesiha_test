import 'package:beesiha_test/domain/entities/characters_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'characters_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class CharactersRemoteDataSource {

  @factoryMethod
  factory CharactersRemoteDataSource(Dio dio) = _CharactersRemoteDataSource;

  @GET('/characters?apikey=009eaa6efb0ae42c8b3fdf2ef5adc6d1&ts=1&hash=b26cfd12f55a82848828813d171dee12&limit=10')
  Future<CharactersWrapper> getCharacters(
      @Query('offset') int offset,
  );
}

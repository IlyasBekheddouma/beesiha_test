import 'package:beesiha_test/domain/entities/characters_wrapper.dart';
import 'package:beesiha_test/domain/entities/comics_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'comics_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class ComicsRemoteDataSource {

  @factoryMethod
  factory ComicsRemoteDataSource(Dio dio) = _ComicsRemoteDataSource;

  @GET('/characters/{id}/comics?apikey=009eaa6efb0ae42c8b3fdf2ef5adc6d1&ts=1&hash=b26cfd12f55a82848828813d171dee12')
  Future<ComicsWrapper> getComics(@Path() int id);
}

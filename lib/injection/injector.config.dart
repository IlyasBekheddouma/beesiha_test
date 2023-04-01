// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/services/http_service/characters/characters_repository_impl.dart'
    as _i7;
import '../data/services/http_service/characters/source/remote/characters_remote_data_source.dart'
    as _i4;
import '../data/services/http_service/comics/comics_repository_impl.dart'
    as _i10;
import '../data/services/http_service/comics/source/remote/comics_remote_data_source.dart'
    as _i8;
import '../domain/repostories/characters_repository.dart' as _i6;
import '../domain/repostories/comics_repository.dart' as _i9;
import '../domain/usecases/get_characters_usecase.dart' as _i11;
import '../domain/usecases/get_comics_usecase.dart' as _i12;
import '../presentation/feature/details/providers/get_comics_providers.dart'
    as _i14;
import '../presentation/feature/home/characters/providers/get_characters_providers.dart'
    as _i13;
import '../presentation/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.$AppRouter>(() => _i3.$AppRouter());
  gh.lazySingleton<_i4.CharactersRemoteDataSource>(
      () => _i4.CharactersRemoteDataSource(get<_i5.Dio>()));
  gh.lazySingleton<_i6.CharactersRepository>(() =>
      _i7.CharactersRepositoryImpl(get<_i4.CharactersRemoteDataSource>()));
  gh.lazySingleton<_i8.ComicsRemoteDataSource>(
      () => _i8.ComicsRemoteDataSource(get<_i5.Dio>()));
  gh.lazySingleton<_i9.ComicsRepository>(
      () => _i10.ComicsRepositoryImpl(get<_i8.ComicsRemoteDataSource>()));
  gh.factory<_i11.GetCharactersUseCase>(
      () => _i11.GetCharactersUseCase(get<_i6.CharactersRepository>()));
  gh.factory<_i12.GetComicsUseCase>(
      () => _i12.GetComicsUseCase(get<_i9.ComicsRepository>()));
  gh.factory<_i13.GetCharactersProviders>(
      () => _i13.GetCharactersProviders(get<_i11.GetCharactersUseCase>()));
  gh.factory<_i14.GetComicsProviders>(
      () => _i14.GetComicsProviders(get<_i12.GetComicsUseCase>()));
  return get;
}

import 'package:beesiha_test/domain/entities/comics_wrapper.dart';

abstract class ComicsRepository {
  Future<ComicsWrapper> getComics(int id);
}

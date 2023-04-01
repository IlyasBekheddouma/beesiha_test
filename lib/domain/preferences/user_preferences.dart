import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

abstract class UserPreferences {

  Future<void> addFavorites(int id);

  Future<void> removeFromFavorites(int id);

  Preference<List<String>> getFavorites();

  bool isLogged();

  Future<void> setIfLogged(bool value);
}

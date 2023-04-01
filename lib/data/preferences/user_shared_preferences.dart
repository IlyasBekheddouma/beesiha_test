import 'package:beesiha_test/domain/preferences/user_preferences.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class UserSharedPreferences extends UserPreferences {
  UserSharedPreferences(this._preferences);
  final StreamingSharedPreferences _preferences;

  static const String _prefix = 'user_prefs';
  static const String _favoritesJsonKey = '${_prefix}_favorites_json';
  static const String _isLoggedJsonKey = '${_prefix}_is_logged_json';

  @override
  Future<void> addFavorites(int id) async {
    _preferences.setStringList(_favoritesJsonKey, [...getFavorites().getValue(), id.toString()]);
  }

  @override
  Future<void> removeFromFavorites(int id) async {
    var nl=getFavorites().getValue();
    nl.removeWhere((element) => element==id.toString());
    _preferences.setStringList(_favoritesJsonKey, nl);
  }

  @override
  Preference<List<String>> getFavorites() => _preferences.getStringList(_favoritesJsonKey, defaultValue: []);

  @override
  bool isLogged() => _preferences.getBool(_isLoggedJsonKey, defaultValue: false).getValue();

  @override
  Future<void> setIfLogged(bool value) async {
    _preferences.setBool(_isLoggedJsonKey, value);
  }
}

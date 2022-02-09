import 'SharedPreferencesProvider.dart';

class AppSharedPreferences {
  static const KEY_ACCESS_TOKEN = "PREF_KEY_ACCESS_TOKEN";
  static const KEY_LANG = "PREF_KEY_LANG";
  static const KEY_INTRO = "PREF_KEY_INTRO";

  static bool initialized;
  static SharedPreferencesProvider _pref;
  static init() async {
    _pref = await SharedPreferencesProvider.getInstance();
  }

  //Token
  static String get accessToken => _pref.read(KEY_ACCESS_TOKEN);

  static set accessToken(String accessToken) =>
      _pref.save(KEY_ACCESS_TOKEN, accessToken);

  static bool get hasAccessToken => _pref.contains(KEY_ACCESS_TOKEN);

  //language
  static String get lang => _pref.read(KEY_LANG);

  static set lang(String lang) => _pref.save(KEY_LANG, lang);

  static bool get hasAccessLang => _pref.contains(KEY_LANG);

  //intro
  static bool get intro => _pref.read(KEY_INTRO);

  static set intro(bool intro) => _pref.save(KEY_INTRO, intro);

  // function remove
  static remove(String key) {
    _pref.remove(key);
  }

  // function delete all
  static clear() {
    _pref.clear();
  }
}

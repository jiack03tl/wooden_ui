import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferencesService? instance;
  static SharedPreferences? preferences;

  SharedPreferencesService();

  static Future<SharedPreferencesService?> getInstance() async {
    instance ??= SharedPreferencesService();
    preferences ??= await SharedPreferences.getInstance();
    return instance;
  }

// Keys for your shared preferences
  static String isFirstTimeKey = 'isFirstTimeKey';
  static String isLangSelectedKey = 'isLangSelectedKey';
  static String isSetupProfileDoneKey = 'isSetupProfileDoneKey';
  static String isLoggedInKey = 'isLoggedInKey';
  static String authTokenKey = 'authTokenKey';

  bool? get isFirstTime => preferences?.getBool(isFirstTimeKey) ?? false;
  set isFirstTime(value) =>
      preferences?.setBool(isFirstTimeKey, value ?? false);

  String? get langSelected => preferences?.getString(isLangSelectedKey);
  set langSelected(value) => preferences?.setString(isLangSelectedKey, value);

  bool? get isLoggedIn => preferences?.getBool(isLoggedInKey) ?? false;
  set isLoggedIn(value) => preferences?.setBool(isLoggedInKey, value ?? false);

  bool? get isSetupProfileDone =>
      preferences?.getBool(isSetupProfileDoneKey) ?? false;
  set isSetupProfileDone(value) =>
      preferences?.setBool(isSetupProfileDoneKey, value ?? false);

  String? get authToken => preferences?.getString(authTokenKey) ?? "";
  set authToken(value) => preferences?.setString(authTokenKey, value ?? "");
}

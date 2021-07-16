import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  SpHelper._();
  static SpHelper spHelper = SpHelper._();
  SharedPreferences? prefs;
  initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  saveUserName(String name) {
    prefs!.setString('name', name);
  }

  saveUserType(String type) {
    prefs!.setString('type', type);
  }

  String? getName() {
    return prefs!.getString('name');
  }

  String? getType() {
    return prefs!.getString('type');
  }

  void removeKey(String key) {
    prefs!.remove(key);
  }
}

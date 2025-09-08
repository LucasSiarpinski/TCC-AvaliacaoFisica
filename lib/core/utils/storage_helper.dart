import 'package:shared_preferences/shared_preferences.dart';

class StorageHelper {
  static Future<void> saveUserType(String tipoUsuario) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('tipoUsuario', tipoUsuario);
  }

  static Future<String?> getUserType() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('tipoUsuario');
  }
}

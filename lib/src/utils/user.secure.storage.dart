import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage {
  static final _storage = FlutterSecureStorage();

  static const _email = 'email';
  static const _password = 'password';

  static Future setEmail(String email) async {
    return await _storage.write(key: _email, value: email);
  }

  static Future<String?> getEmail() async {
    return await _storage.read(key: _email);
  }

  static Future clearEmail() async {
    return await _storage.delete(key: _email);
  }

  static Future setPassword(String password) async {
    return await _storage.write(key: _password, value: password);
  }

  static Future<String?> getPassword() async {
    return await _storage.read(key: _password);
  }

  static Future clearPassword() async {
    return await _storage.delete(key: _password);
  }
}

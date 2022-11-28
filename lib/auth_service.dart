import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  bool _isAuthorized = false;

  bool get isAuthorized => _isAuthorized;

  factory AuthService() => AuthService.instance;

  AuthService._();

  void signIn() {
    if (!_isAuthorized) {
      _isAuthorized = true;
      notifyListeners();
    }
  }

  void signOut() {
    if (_isAuthorized) {
      _isAuthorized = false;
      notifyListeners();
    }
  }

  static AuthService? _instance;

  static AuthService get instance => _instance = _instance ?? AuthService._();
}

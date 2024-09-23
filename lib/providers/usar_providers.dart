import 'package:flutter/material.dart';
import 'package:testlab/models/user_models.dart';

class UserProvider extends ChangeNotifier {
  User? _user;
  String? _accessToken;
  String? _refreshToken;

  User get user => _user!;
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  void onLogin(Usermodel userModel ) async {
    _user = userModel.user;
    _accessToken = userModel.accessToken;
    _refreshToken = userModel.refreshToken;
    notifyListeners();
  } 

  void onLogout() {
    _user = null;
    _accessToken = null;
    _refreshToken = null;
    notifyListeners();
  }

  void updateAccessToken(String newAccess) {
    _accessToken = newAccess;
    notifyListeners();
  }
}
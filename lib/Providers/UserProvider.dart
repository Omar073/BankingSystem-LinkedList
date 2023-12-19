import 'package:flutter/cupertino.dart';
import '../Classes/User.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  User? get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
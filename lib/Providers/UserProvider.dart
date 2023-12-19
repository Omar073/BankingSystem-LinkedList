import 'package:flutter/cupertino.dart';
import '../Classes/User.dart';

class UserProvider with ChangeNotifier {
  User? _currentUser;
  User? get user => _currentUser;

  void setCurrentUser(User newuser) {
    _currentUser = newuser;
    notifyListeners();
  }
}
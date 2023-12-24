import 'package:flutter/cupertino.dart';
import '../Classes/Course.dart';
import '../Classes/Student.dart';
import '../Classes/User.dart';

class UserProvider with ChangeNotifier {
  User? _currentUser;
  User? get user => _currentUser;

  void setCurrentUser(User newUser) {
    _currentUser = newUser;
    notifyListeners();
  }

  void updateFollowedCourses(List<Course> followedCourses) {
    (_currentUser as Student)!.registeredCourses = followedCourses;
    notifyListeners();
  }
}
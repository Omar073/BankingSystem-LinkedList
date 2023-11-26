import 'Course.dart';
import 'User.dart';

class Instructor extends User {
  List<Course> _assignedCourses = [];
  bool _isFullTime =
      false; // Indicates whether the instructor is a full-time staff member

  Instructor({
    required String name,
    required String ID,
    required int age,
    required String phonenum,
    required String email,
    required String password,
    required List<Course> assignedCourses,
    required bool isFullTime,
  }) : super(
          name: name,
          ID: ID,
          age: age,
          phonenum: phonenum,
          email: email,
          password: password,
  );

  // Getters
  List<Course> get assignedCourses => _assignedCourses;
  bool get isFullTime => _isFullTime;

  // Setters
  set assignedCourses(List<Course> courses) {
    _assignedCourses = courses;
  }

  set isFullTime(bool value) {
    _isFullTime = value;
  }
}

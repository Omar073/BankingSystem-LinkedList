import 'Course.dart';
import 'User.dart';

class Instructor extends User {
  List<Course> assignedCourses;
  bool isFullTime; // Indicates whether the instructor is a full-time staff member

  Instructor({
    required super.name,
    required super.ID,
    required super.age,
    required super.phonenum,
    required super.email,
    required super.password,
    required this.assignedCourses,
    required this.isFullTime,
  });
}

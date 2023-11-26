import 'User.dart';

class Student extends User {
  String year;
  String College;
  String Major;
  // Date bdate;
  String University;
  // List<Course> registeredCourses;

  Student({
    required super.name,
    required super.ID,
    required super.age,
    required super.phonenum,
    required super.email,
    required super.password,
    required this.year,
    required this.College,
    required this.Major,
    // required this.bdate,
    required this.University,
    // required this.registeredCourses,
  });
}

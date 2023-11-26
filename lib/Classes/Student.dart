import 'User.dart';

class Student extends User {
  // Private attributes
  late int _year;
  late String _college;
  late String _major;
  // late Date _bdate;
  late String _university;
  // late List<Course> _registeredCourses;

  // Constructor with named parameters
  Student({
    required String name,
    required String ID,
    required int age,
    required String phonenum,
    required String email,
    required String password,
    required String year,
    required String college,
    required String major,
    // required Date bdate,
    required String university,
    // required List<Course> registeredCourses,
  }) : super(
          name: name,
          ID: ID,
          age: age,
          phonenum: phonenum,
          email: email,
          password: password,
  );

  // Getters and setters for private attributes
  // Getters and setters for private attributes
  int get year => _year;
  set year(int value) => _year = value;

  String get college => _college;
  set college(String value) => _college = value;

  String get major => _major;
  set major(String value) => _major = value;

  // Date get bdate => _bdate;
  // set bdate(Date value) => _bdate = value;

  String get university => _university;
  set university(String value) => _university = value;

// List<Course> get registeredCourses => _registeredCourses;
// set registeredCourses(List<Course> value) => _registeredCourses = value;
}

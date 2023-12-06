import 'Center.dart';
import 'Instructor.dart';
import 'Student.dart';
import 'Schedule.dart';

class Course {
  String _courseID;
  String _courseName;
  String _courseDescription;
  List<Student> _assignedStudents;
  Instructor _assignedInstructor;
  List<Center> _availableCenters;
  int _maxCapacity;
  DateTime _startDate;
  DateTime _endDate;
  List<String> _prerequisites;
  bool _isActive;
  Schedule _courseSchedule;

  // Constructor
  Course({
    required String courseID,
    required String courseName,
    required String courseDescription,
    required List<Student> assignedStudents,
    required Instructor assignedInstructor,
    required List<Center> availableCenters,
    required int maxCapacity,
    required DateTime startDate,
    required DateTime endDate,
    required List<String> prerequisites,
    // required String syllabus,
    required bool isActive,
    required Schedule courseSchedule,
    // required List<String> tags,
    // required String meetingLink,
    // required String roomNumber,
    // required double creditHours,
    // required String textbook,
  })  : _courseID = courseID,
        _courseName = courseName,
        _courseDescription = courseDescription,
        _assignedStudents = assignedStudents,
        _assignedInstructor = assignedInstructor,
        _availableCenters = availableCenters,
        _maxCapacity = maxCapacity,
        _startDate = startDate,
        _endDate = endDate,
        _prerequisites = prerequisites,
  // _syllabus = syllabus,
        _isActive = isActive,
        _courseSchedule = courseSchedule;

  // Getters
  String get courseID => _courseID;
  String get courseName => _courseName;
  String get courseDescription => _courseDescription;
  List<Student> get assignedStudents => _assignedStudents;
  Instructor get assignedInstructor => _assignedInstructor;
  List<Center> get availableCenters => _availableCenters;
  int get maxCapacity => _maxCapacity;
  DateTime get startDate => _startDate;
  DateTime get endDate => _endDate;
  List<String> get prerequisites => _prerequisites;
  // String get syllabus => _syllabus;
  bool get isActive => _isActive;
  Schedule get courseSchedule => _courseSchedule;

  // Setters
  set courseID(String value) {
    _courseID = value;
  }

  set courseName(String value) {
    _courseName = value;
  }

  set courseDescription(String value) {
    _courseDescription = value;
  }

  set assignedStudents(List<Student> value) {
    _assignedStudents = value;
  }

  set assignedInstructor(Instructor value) {
    _assignedInstructor = value;
  }

  set availableCenters(List<Center> value) {
    _availableCenters = value;
  }

  set maxCapacity(int value) {
    _maxCapacity = value;
  }

  set startDate(DateTime value) {
    _startDate = value;
  }

  set endDate(DateTime value) {
    _endDate = value;
  }

  set prerequisites(List<String> value) {
    _prerequisites = value;
  }

  // set syllabus(String value) {
  //   _syllabus = value;
  // }

  set isActive(bool value) {
    _isActive = value;
  }

  set courseSchedule(Schedule value) {
    _courseSchedule = value;
  }

}

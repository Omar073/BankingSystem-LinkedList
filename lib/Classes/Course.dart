import 'Center.dart';
import 'Instructor.dart';
import 'Student.dart';
import 'Schedule.dart';
import 'User.dart';

class Course {
  String _courseID;
  String _courseName;
  String _courseDescription;
  List<Student> _assignedStudents;
  Instructor? _assignedInstructor;
  List<myCenter>? _availableCenters;
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
    // required List<myCenter> availableCenters,
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
        // _availableCenters = availableCenters,
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
  // Get the assigned instructor for the course
  Instructor get assignedInstructor => _assignedInstructor!;

  // Get the available centers for the course
  List<myCenter> get availableCenters => _availableCenters!;
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

  set availableCenters(List<myCenter> value) {
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

  void addStudentToCourse(Student student) {
    _assignedStudents.add(student);
    print("Student '${student.name}' added to the course '${_courseName}'.");
  }

  void addInstructorToCourse(Instructor instructor) {
    if (_assignedInstructor == null) {
      _assignedInstructor = instructor;
      print("Instructor '${instructor.name}' added to the course '${_courseName}'.");
    } else {
      print("The course '${_courseName}' already has an instructor.");
    }
  }
}

// Course 1
Course C001 = Course(
  courseID: "C001",
  courseName: "Introduction to Programming",
  courseDescription: "Learn the basics of programming.",
  assignedStudents: students,
  // assignedInstructor: instructorNinja,
  // availableCenters: [pioneerCenter],
  maxCapacity: 50,
  startDate: DateTime(2023, 11, 20),
  endDate: DateTime(2024, 1, 15),
  prerequisites: ["None"],
  isActive: true,
  courseSchedule: schedule1,
);

// Course 2
Course C002 = Course(
  courseID: "C002",
  courseName: "Introduction to Web Development",
  courseDescription: "Learn the basics of web development.",
  assignedStudents: [studentFadel, studentKarim, studentJane],
  // availableCenters: [techCenter],
  maxCapacity: 50,
  startDate: DateTime(2023, 11, 20),
  endDate: DateTime(2024, 1, 15),
  prerequisites: ["None"],
  isActive: true,
  courseSchedule: schedule2,
);

// Course 3
Course C003 = Course(
  courseID: "C003",
  courseName: "Introduction to Mobile Development",
  courseDescription: "Learn the basics of mobile development.",
  assignedStudents: [studentOmar, studentEsmat, studentJack],
  // availableCenters: [techCenter],
  maxCapacity: 50,
  startDate: DateTime(2023, 11, 20),
  endDate: DateTime(2024, 1, 15),
  prerequisites: ["None"],
  isActive: true,
  courseSchedule: schedule1,
);

// Course 4
Course C004 = Course(
  courseID: "C004",
  courseName: "Logic Design",
  courseDescription: "Learn the basics of data science.",
  assignedStudents: [studentFadel, studentYoussef],
  // availableCenters: [pioneerCenter],
  maxCapacity: 50,
  startDate: DateTime(2023, 11, 20),
  endDate: DateTime(2024, 1, 15),
  prerequisites: ["None"],
  isActive: true,
  courseSchedule: schedule2,
);

List<Course> courses = [C001, C002, C003, C004];

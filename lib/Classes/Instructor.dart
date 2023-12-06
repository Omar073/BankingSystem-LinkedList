import 'Course.dart';
import 'User.dart';

class Instructor extends User {
  List<Course> _assignedCourses = [];
  bool _isFullTime = false;

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
  ) {
    _assignedCourses = assignedCourses;
    _isFullTime = isFullTime;
  }

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

  // Function to add a new course to the instructor's assigned courses
  void addCourse(Course course) {
    _assignedCourses.add(course);
    print("Course '${course.courseName}' added to assigned courses.");
  }

  // Function to remove a course from the instructor's assigned courses
  void removeCourse(Course course) {
    if (_assignedCourses.contains(course)) {
      _assignedCourses.remove(course);
      print("Course '${course.courseName}' removed from assigned courses.");
    } else {
      print("Course '${course.courseName}' not found in assigned courses.");
    }
  }

  // Function to view the list of assigned courses
  void viewAssignedCourses() {
    print("Assigned Courses:");
    for (var course in _assignedCourses) {
      print("${course.courseName} - ${course.courseDescription}");
    }
  }

  // // Function to update course details (e.g., description, schedule)
  // void updateCourseDetails(Course course, String newDescription, String newSchedule) {
  //   if (_assignedCourses.contains(course)) {
  //     course.courseDescription = newDescription;
  //     course.courseSchedule = newSchedule;
  //     print("Course details updated successfully for '${course.courseName}'.");
  //   } else {
  //     print("Course '${course.courseName}' not found in assigned courses.");
  //   }
  // }

}


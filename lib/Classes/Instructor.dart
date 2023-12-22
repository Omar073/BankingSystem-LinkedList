import 'package:flutter/foundation.dart';

import 'Course.dart';
import 'User.dart';

class Instructor extends User {
  List<Course> _assignedCourses = [];
  bool _isFullTime = false;

  Instructor({
    required super.name,
    required super.ID,
    required super.age,
    required super.phonenum,
    required super.email,
    required super.password,
    required List<Course> assignedCourses,
    required bool isFullTime,
  }) : super() {
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
    if (kDebugMode) {
      print("Course '${course.courseName}' added to assigned courses.");
    }
  }

  // Function to remove a course from the instructor's assigned courses
  void removeCourse(Course course) {
    if (_assignedCourses.contains(course)) {
      _assignedCourses.remove(course);
      if (kDebugMode) {
        print("Course '${course.courseName}' removed from assigned courses.");
      }
    } else {
      if (kDebugMode) {
        print("Course '${course.courseName}' not found in assigned courses.");
      }
    }
  }

  // Function to view the list of assigned courses
  void viewAssignedCourses() {
    if (kDebugMode) {
      print("Assigned Courses:");
    }
    for (var course in _assignedCourses) {
      if (kDebugMode) {
        print("${course.courseName} - ${course.courseDescription}");
      }
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

// Instructor 1
Instructor instructorNinja = Instructor(
  name: "Net Ninja",
  ID: "I001",
  age: 35,
  phonenum: "987-654-3210",
  email: "ninja@example.com",
  password: "NinjaGo",
  //assignedCourses: [C001],
  assignedCourses: [],
  isFullTime: true,
);

// Instructor 2
Instructor instructorSmith = Instructor(
  name: "Dr. Smith",
  ID: "I002",
  age: 35,
  phonenum: "987-654-3210",
  email: "smith@example.com",
  password: "smith123",
  //assignedCourses: [C002],
  assignedCourses: [],
  isFullTime: true,
);

// Instructor 3
Instructor instructorCbum = Instructor(
  name: "Chris Bumstead",
  ID: "I003",
  age: 35,
  phonenum: "987-654-3210",
  email: "Mr.Olympia@Winner.com",
  password: "chris123",
  assignedCourses: [],
  // assignedCourses: [C003, C004],
  isFullTime: true,
);

List<Instructor> instructors = [
  instructorNinja,
  instructorSmith,
  instructorCbum
];
// List<Instructor> instructors = [instructorNinja, instructorCbum];

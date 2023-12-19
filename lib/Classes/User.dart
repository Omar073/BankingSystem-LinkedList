import 'package:flutter/foundation.dart';

import 'Center.dart';
import 'Course.dart';
import 'Instructor.dart';
import 'Schedule.dart';
import 'Student.dart';

class User{ // TODO: make abstract?
  String name;
  String ID;
  int age;
  String phonenum;
  String email;
  String password;
  bool isAdmin = false;

  User({
    required this.name,
    required this.ID,
    required this.age,
    required this.phonenum,
    required this.email,
    required this.password,
    required this.isAdmin
  });

  // Function to view all available courses
  void viewAllCourses(List<Course> allCourses) {
    print("All Available Courses:");
    for (var course in allCourses) {
      print("${course.courseName} - ${course.courseDescription}");
    }
  }

  String getFirstName() {
    return name.split(" ")[0];
  }

  // Function to view all courses offered in a specific center
  void viewCoursesInCenter(List<Course> allCourses, myCenter center) {
    print("Courses offered at ${center.centerName}:");
    for (var course in allCourses) {
      if (course.availableCenters.contains(center)) {
        print("${course.courseName} - ${course.courseDescription}");
      }
    }
  }

  // Function to view all centers that offer a specific course
  void viewCentersForCourse(List<myCenter> allCenters, Course course) {
    print("Centers offering ${course.courseName}:");
    for (var center in allCenters) {
      if (course.availableCenters.contains(center)) {
        print("${center.centerName} - ${center.centerAddress}");
      }
    }
  }

  void viewCourseDetails(Course course) {
    print("Course Details for ${course.courseName}:");
    print("Description: ${course.courseDescription}");
    print("Instructor: ${course.assignedInstructor.name}");
    print("Start Date: ${course.startDate}");
    print("End Date: ${course.endDate}");
    // Add more details as needed.
  }

  // Function to view the schedule of a single course
  void viewScheduleForCourse(Course course) {
    if (kDebugMode) {
      print("Course Schedule for ${course.courseName}:");
      print("Start Date: ${course.startDate}");
      print("End Date: ${course.endDate}");
      print("Schedule: ${course.courseSchedule.courseDate} - ${course.courseSchedule.time}");
    }
  }

}

User admin1 = User(
  name: "Admin 1",
  ID: "admin",
  age: 30,
  phonenum: "0123456789",
  email: "admin@example.com",
  password: "admin",
  isAdmin: true
);

List<User> users = [admin1];
// Users.addAll(students);
// Users.addAll(instructors);
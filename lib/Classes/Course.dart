import 'package:flutter/cupertino.dart';

import 'Instructor.dart';
import 'Student.dart';

class Course {
  String courseID;
  String courseName;
  String courseDescription;
  List<Student> assignedStudents;
  Instructor assignedInstructor;
  List<Center> availableCenters;
  int maxCapacity; // Maximum number of students the course can accommodate.
  DateTime startDate; // Start date of the course.
  DateTime endDate; // End date of the course.
  List<String> prerequisites; // List of prerequisite courses or knowledge.
  // String syllabus;  // Detailed course syllabus.
  bool isActive; // Indicates whether the course is currently active.
  // List<String> tags;  // Tags or labels associated with the course (e.g., "Programming," "Mathematics").
  // String meetingLink;  // Virtual meeting link for online courses.
  // String roomNumber;   // Physical room number for in-person sessions.
  // double creditHours;  // Number of credit hours assigned to the course.
  // String textbook;     // Recommended textbook for the course.

  // Constructor
  Course({
    required this.courseID,
    required this.courseName,
    required this.courseDescription,
    required this.assignedStudents,
    required this.assignedInstructor,
    required this.availableCenters,
    required this.maxCapacity,
    required this.startDate,
    required this.endDate,
    required this.prerequisites,
    // required this.syllabus,
    required this.isActive,
    // required this.tags,
    // required this.meetingLink,
    // required this.roomNumber,
    // required this.creditHours,
    // required this.textbook,
  });
}

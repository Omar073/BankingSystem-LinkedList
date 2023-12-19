import 'package:flutter/foundation.dart';

import 'Course.dart';

class myCenter {
  String _centerName;
  String _centerAddress;
  String _addressMapsLink;
  String _activeHours;
  int _centerCapacity;
  late List<Course> _availableCourses = [];

  // Constructor
  myCenter({
    required String centerName,
    required String centerAddress,
    required String addressMapsLink,
    required String activeHours,
    required int centerCapacity,
    List<Course> availableCourses = const [],
  })  : _centerName = centerName,
        _centerAddress = centerAddress,
        _addressMapsLink = addressMapsLink,
        _activeHours = activeHours,
        _centerCapacity = centerCapacity;

  // Getter methods
  String get centerName => _centerName;
  String get centerAddress => _centerAddress;
  String get addressMapsLink => _addressMapsLink;
  String get activeHours => _activeHours;
  int get centerCapacity => _centerCapacity;
  List<Course> get availableCourses => _availableCourses;

  // Setter methods
  set centerName(String value) {
    _centerName = value;
  }

  set centerAddress(String value) {
    _centerAddress = value;
  }

  set addressMapsLink(String value) {
    _addressMapsLink = value;
  }

  set activeHours(String value) {
    _activeHours = value;
  }

  set centerCapacity(int value) {
    _centerCapacity = value;
  }

  // Function to update center details
  void updateCenterDetails(String newName, String newAddress, String newMapsLink, String newActiveHours, int newCapacity) {
    _centerName = newName;
    _centerAddress = newAddress;
    _addressMapsLink = newMapsLink;
    _activeHours = newActiveHours;
    _centerCapacity = newCapacity;
    if (kDebugMode) {
      print("Center details updated successfully.");
    }
  }

  // Function to add a course to the center's available courses
  void addCourseToCenter(Course course) {
    if(!_availableCourses.contains(course)) {
      _availableCourses.add(course);
      if (kDebugMode) {
        print("Course '${course.courseName}' added to $_centerName's available courses.");
      }
      return;
    }
    else {
      if (kDebugMode) {
        print("Course '${course.courseName}' already exists in $_centerName's available courses.");
      }
      return;
    }
  }

  // Function to remove a course from the center's available courses
  void removeCourseFromCenter(Course course) {
    if (_availableCourses.contains(course)) {
      _availableCourses.remove(course);
      if (kDebugMode) {
        print("Course '${course.courseName}' removed from $_centerName's available courses.");
      }
    } else {
      if (kDebugMode) {
        print("Course '${course.courseName}' not found in $_centerName's available courses.");
      }
    }
  }

}

// Center 1
myCenter techCenter = myCenter(
  centerName: "Tech Center",
  centerAddress: "123 Tech Street, City",
  addressMapsLink: "https://maps.example.com/tech-center",
  activeHours: "9 AM - 6 PM",
  centerCapacity: 100,
  availableCourses: [C003, C002],
  // availableCourses: [],
);

// Center 2
myCenter pioneerCenter = myCenter(
  centerName: "Pioneer Center",
  centerAddress: "456 Pioneer Street, City",
  addressMapsLink: "https://maps.example.com/pioneer-center",
  activeHours: "10 AM - 7 PM",
  centerCapacity: 350,
  availableCourses: [C001, C004],
  // availableCourses: [],
);

List<myCenter> centers = [techCenter, pioneerCenter];
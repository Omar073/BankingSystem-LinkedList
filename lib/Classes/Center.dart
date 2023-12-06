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
    print("Center details updated successfully.");
  }

  // Function to add a course to the center's available courses
  void addCourseToCenter(Course course) {
    if(!_availableCourses.contains(course)) {
      _availableCourses.add(course);
      print("Course '${course.courseName}' added to ${_centerName}'s available courses.");
      return;
    }
    else {
      print("Course '${course.courseName}' already exists in ${_centerName}'s available courses.");
      return;
    }
  }

  // Function to remove a course from the center's available courses
  void removeCourseFromCenter(Course course) {
    if (_availableCourses.contains(course)) {
      _availableCourses.remove(course);
      print("Course '${course.courseName}' removed from ${_centerName}'s available courses.");
    } else {
      print("Course '${course.courseName}' not found in ${_centerName}'s available courses.");
    }
  }

}


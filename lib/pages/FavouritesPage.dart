import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Classes/Course.dart';
import '../Classes/Student.dart';
import '../Classes/User.dart'; // Import your User class here
import '../Providers/UserProvider.dart'; // Import your UserProvider class here

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Assuming you have a UserProvider that provides the current user
    User? user = context.read<UserProvider>().user;

    // Check if the user is a Student and has registered courses
    if (user is Student && user.registeredCourses.isNotEmpty) {
      List<Course> registeredCourses = user.registeredCourses;

      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: registeredCourses.length,
                itemBuilder: (context, index) {
                  final course = registeredCourses[index];
                  // Build your UI using the course information
                  return ListTile(
                    title: Text(course.courseName),
                    subtitle: Text(course.courseID),
                    // Add more UI components as needed
                  );
                },
              ),
            ],
          ),
        ),
      );
    } else {
      // If the user is not a Student or has no registered courses
      return Scaffold(
        body: Center(
          child: Text('No registered courses.'),
        ),
      );
    }
  }
}

import 'package:flutter/material.dart';

import '../Classes/Course.dart'; // Assuming Course class is defined here

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace the followingCourses list with your own list of Course objects
    List<Course> followingCourses = [
      //  Course(courseID: '1', courseName: 'Math', courseCode: 'MATH101'),
      //  Course(courseID: '2', courseName: 'History', courseCode: 'HIST202', courseDescription: '', assignedStudents: [], assignedInstructor: null, availableCenters: [], maxCapacity: null),
      // Add more courses as needed
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: followingCourses.length,
              itemBuilder: (context, index) {
                final course = followingCourses[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}

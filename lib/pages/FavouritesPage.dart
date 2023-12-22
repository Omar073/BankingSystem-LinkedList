import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Classes/Course.dart';
import '../Classes/Student.dart';
import '../Classes/User.dart';
import '../Providers/UserProvider.dart';
import '../pages/CourseInfo.dart'; // Import your CourseInfo class

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  late User user;

  @override
  Widget build(BuildContext context) {
    // Assuming you have a UserProvider that provides the current user
    user = context.watch<UserProvider>().user!;

    // Check if the user is a Student and has registered courses
    if (user is Student && (user as Student).registeredCourses.isNotEmpty) {
      List<Course> registeredCourses = (user as Student).registeredCourses;

      return SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'My Registered Courses',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: registeredCourses.length,
                  itemBuilder: (context, index) {
                    final course = registeredCourses[index];
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Navigate to the CourseInfo page with the selected course
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CourseInfo(
                                course: course,
                                onChange: () { setState(() {}); },
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                course.courseName,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Course ID: ${course.courseID}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              // Add more UI components as needed
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      // If the user is not a Student or has no registered courses
      return const Scaffold(
        body: Center(
          child: Text('No registered courses.'),
        ),
      );
    }
  }
}

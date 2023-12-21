import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Classes/User.dart';
import '../Providers/UserProvider.dart';
import '../pages/CourseInfo.dart';
// import 'package:class_mate/pages/CourseInfo.dart';

class CourseCard extends StatelessWidget {
  final String courseName;
  final String courseCode;
  final String courseID;
  late User user;

  CourseCard({
    required this.courseName,
    required this.courseCode,
    required this.courseID,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    user = context.watch<UserProvider>().user!;

    return GestureDetector(
      onTap: () {
      //  Navigate to CourseInfoScreen
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CourseInfo(
                courseID: courseID,
                courseName: courseName,
                courseCode: courseCode
                , isCourseFollowed: false,
            ),

            // Replace with your CourseInfoScreen widget
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseName,
                      style: const TextStyle(
                        color: Color(0xFF132440),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      courseCode,
                      style: const TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 50,
                height: 120, // Increased height
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft:
                    Radius.circular(20), // Added to make it a full capsule
                    bottomLeft:
                    Radius.circular(20), // Added to make it a full capsule
                  ),
                ),
                child: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CourseInfo(
                          courseID: courseID,
                          courseName: courseName,
                          courseCode: courseCode
                          , isCourseFollowed: false,
                        ),
                        // Replace with your CourseInfoScreen widget
                      ),
                    );
                  }, // TODO: course page all show same course
                  //! we can temporarily just send the course info to course page but i would like to know how to access it directly
                  icon: const Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
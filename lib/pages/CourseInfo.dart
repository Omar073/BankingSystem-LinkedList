import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Classes/Course.dart';
import '../Classes/Instructor.dart';
import '../Classes/Student.dart';
import '../Classes/User.dart';
import '../Providers/UserProvider.dart';

class CourseInfo extends StatefulWidget {
  final Course course;
  final VoidCallback onChange;

  CourseInfo({
    required this.course,
    required this.onChange,
    super.key,
  });

  @override
  State<CourseInfo> createState() => _CourseInfoState();
}

class _CourseInfoState extends State<CourseInfo> {
  late User user;
  bool isCourseFollowed = false;

  @override
  Widget build(BuildContext context) {
    user = context.watch<UserProvider>().user!;
    if (user is Student) {
      isCourseFollowed =
          (user as Student).isCourseFollowed(widget.course.courseID);
    }
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            widget.course.courseID,
            style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.menu_book_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  width: width - 50,
                  height: 300,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20)
                              .copyWith(top: 12.0),
                          child: Center(
                            child: Text(
                              widget.course.courseName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            widget.course.courseID,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Text(
                            // get assigned instructor
                            'Instructor: ${widget.course.assignedInstructor.name}',
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        if (user is Student)
                          Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(255, 211, 220, 230),
                                width: 1.5,
                              ),
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor:
                                    const Color.fromARGB(255, 233, 240, 255),
                                foregroundColor: Colors.black,
                              ),
                              onPressed: () {
                                if (isCourseFollowed && user is Student) {
                                  try {
                                    // Find the corresponding Course object
                                    Course selectedCourse = courses.firstWhere(
                                      (course) =>
                                          course.courseID ==
                                          widget.course.courseID,
                                    );

                                    // remove the course to the student's registered course list
                                    (user as Student)
                                        .unregisterCourse(selectedCourse);
                                  } catch (e) {
                                    if (kDebugMode) {
                                      print(e);
                                    }
                                    // Handle the case when the course is not found
                                    if (kDebugMode) {
                                      print('Course not found!');
                                    }
                                  }
                                } else {
                                  if (user is Student) {
                                    try {
                                      // Find the corresponding Course object
                                      Course selectedCourse =
                                          courses.firstWhere(
                                        (course) =>
                                            course.courseID ==
                                            widget.course.courseID,
                                      );

                                      // Add the course to the student's registered course list
                                      (user as Student)
                                          .registerCourse(selectedCourse);
                                    } catch (e) {
                                      if (kDebugMode) {
                                        print(e);
                                      }
                                      // Handle the case when the course is not found
                                      if (kDebugMode) {
                                        print('Course not found!');
                                      }
                                    }
                                  }
                                }
                                setState(() {widget.onChange();});
                              },
                              child: Text(
                                isCourseFollowed ? 'Unfollow' : 'Follow',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Study Material Option
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            width: 118.50713348388672,
                            height: 120.6663818359375,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xff316d86),
                            ),
                            child: const Icon(
                              Icons.book,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Study Material"),
                      ],
                    ),
                    // Instructors
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle the click on the Instructors option
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            width: 118.50713348388672,
                            height: 120.6663818359375,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color(0xff79bca4),
                            ),
                            child: const Icon(
                              Icons.apartment,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Available Centers"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

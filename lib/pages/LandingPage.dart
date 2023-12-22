import 'package:flutter/material.dart';
import '../Classes/Center.dart';
import '../Classes/Course.dart';
import '../Classes/Instructor.dart';
import '../Classes/Student.dart';
import '../Classes/User.dart';
import 'LoginPage.dart';
import 'SignUp.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  double height = 300;
  double width = 300;

  @override
  void initState() {
    super.initState();
    users.addAll(students);
    users.addAll(instructors);

    // Add some dummy data to the app

    // * add courses to centers
    techCenter.addCourseToCenter(C003);
    techCenter.addCourseToCenter(C002);

    pioneerCenter.addCourseToCenter(C001);
    pioneerCenter.addCourseToCenter(C004);
    pioneerCenter.addCourseToCenter(C005);

    // * add centers to coursers
    C001.addCenterToCourse(pioneerCenter);
    C004.addCenterToCourse(pioneerCenter);
    C005.addCenterToCourse(pioneerCenter);
    C002.addCenterToCourse(techCenter);
    C003.addCenterToCourse(techCenter);


    // * Add instructors to courses
    C001.addInstructorToCourse(instructorNinja);
    C002.addInstructorToCourse(instructorCbum);
    C003.addInstructorToCourse(instructorSmith);
    C005.addInstructorToCourse(instructorSmith);
    C004.addInstructorToCourse(instructorCbum);

    // *Add courses to Instructors
    instructorNinja.addCourse(C001);
    instructorCbum.addCourse(C002);
    instructorSmith.addCourse(C003);
    instructorSmith.addCourse(C005);
    instructorCbum.addCourse(C004);
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      // body:
      // InkWell(
      //     child: Container(
      //       width: width,
      //       height: height,
      //       color: const Color.fromARGB(255, 189, 217, 255),
      //       child: Center(
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             SizedBox(height: height/3.8,),
      //             Center(
      //               child: Image.asset("assets/images/classmate2.jpg", scale: 2,),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 20.0),
      //               child: Container(
      //                 width: 200,
      //                   height: 50,
      //                   decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     borderRadius: BorderRadius.circular(40.0), // Adjust the border radius as needed
      //                     // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50),), // Adjust the border radius as needed
      //                   ),
      //                   child: const Center(child: Text("Tap anywhere!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),))),
      //             )
      //           ],
      backgroundColor: const Color(0xFF7BB4E3),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              const Text(
                'Welcome to \nClassmate',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Your Way to A+',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'assets/images/classmate1.png',
                width: 450,
                height: 350,
              ), // Adjust spacing as needed
              SizedBox(
                width: 296,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Let\'s go',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()), // * Go to LoginPage
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()), // * Go to SignUp
                  );
                },
                child: const Text(
                  'Continue as Guest',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

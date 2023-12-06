import 'Classes/Center.dart';
import 'Classes/Course.dart';
import 'Classes/Instructor.dart';
import 'Classes/Schedule.dart';
import 'Classes/Student.dart';

// // Create a sample student
// Student student = Student(
//   name: "John Doe",
//   ID: "S001",
//   age: 20,
//   phonenum: "123-456-7890",
//   email: "john.doe@example.com",
//   password: "password",
//   year: "Sophomore",
//   college: "Engineering",
//   major: "Computer Science",
//   university: "XYZ University",
// );

// // Create a sample instructor
// Instructor instructor = Instructor(
//   name: "Dr. Smith",
//   ID: "I001",
//   age: 35,
//   phonenum: "987-654-3210",
//   email: "smith@example.com",
//   password: "password",
//   assignedCourses: [], // Empty for now
//   isFullTime: true,
// );

// // Create a sample center
// myCenter center = myCenter(
//   centerName: "Tech Center",
//   centerAddress: "123 Tech Street, City",
//   addressMapsLink: "https://maps.example.com/tech-center",
//   activeHours: "9 AM - 6 PM",
//   centerCapacity: 100,
// );

// // Create a sample schedule
// Schedule schedule = Schedule(
//   courseDate: DateTime(2023, 11, 25),
//   frequencyPerWeek: 3,
//   time: "10:00 AM - 12:00 PM",
// );

// // Create a sample course
// Course course = Course(
//   courseID: "C001",
//   courseName: "Introduction to Programming",
//   courseDescription: "Learn the basics of programming.",
//   assignedStudents: [student],
//   assignedInstructor: instructor,
//   availableCenters: [center],
//   maxCapacity: 50,
//   startDate: DateTime(2023, 11, 20),
//   endDate: DateTime(2024, 1, 15),
//   prerequisites: ["None"],
//   isActive: true,
//   courseSchedule: schedule,
// );

// // Add the course to the instructor's assigned courses
// instructor.addCourse(course);
//
// // Add the course to the center's available courses
// center.addCourseToCenter(course);
//
// // Print some information
// print("Student Name: ${student.name}");
// print("Instructor Name: ${instructor.name}");
// print("Center Name: ${center.centerName}");
// print("Course Name: ${course.courseName}");
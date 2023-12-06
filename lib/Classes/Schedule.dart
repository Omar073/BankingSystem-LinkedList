import 'Date.dart';

class Schedule {
  // Date courseDate;
  DateTime  courseDate;
  int frequencyPerWeek;
  String time;

  Schedule({
    required this.courseDate,
    required this.frequencyPerWeek,
    required this.time,
  });
}

// Create a sample schedule
Schedule schedule = Schedule(
  courseDate: DateTime(2023, 11, 25),
  frequencyPerWeek: 3,
  time: "10:00 AM - 12:00 PM",
);
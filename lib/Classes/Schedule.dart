import 'Date.dart';

class Schedule {
  Date courseDate;
  int frequencyPerWeek;
  String time;

  Schedule({
    required this.courseDate,
    required this.frequencyPerWeek,
    required this.time,
  });
}

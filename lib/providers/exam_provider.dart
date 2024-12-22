import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/exam.dart';

class ExamProvider with ChangeNotifier {
  final List<Exam> _exams = [];

  List<Exam> get exams => _exams;

  void addExam(Exam exam) {
    _exams.add(exam);
    notifyListeners();
  }

  void removeExam(String id) {
    _exams.removeWhere((exam) => exam.id == id);
    notifyListeners();
  }

  List<Exam> getEventsForDay(DateTime day) {
    return _exams
        .where((exam) => isSameDay(exam.dateTime, day))
        .toList();
  }
}

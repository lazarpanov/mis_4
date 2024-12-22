import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/calendar_screen.dart';
import 'providers/exam_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExamProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Exam Scheduler',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          scaffoldBackgroundColor: Colors.teal[50],
          appBarTheme: AppBarTheme(
            color: Colors.teal,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          cardTheme: CardTheme(
            color: Colors.white,
            elevation: 3,
          ),
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.teal[700], fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(color: Colors.teal[600]),
            headlineSmall: TextStyle(
              color: Colors.teal[800],
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: CalendarScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/enroll_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enroll Screen',
       debugShowCheckedModeBanner: false,
      home: EnrollScreen(),
    );
  }
}

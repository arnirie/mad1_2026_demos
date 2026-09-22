import 'package:flutter/material.dart';
import 'package:mad1_quiz_app/screens/box_quiz_answer.dart';
import 'screens/quiz_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: QuizScreen());
  }
}

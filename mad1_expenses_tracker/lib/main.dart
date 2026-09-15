import 'package:flutter/material.dart';
import 'package:mad1_expenses_tracker/screens/list_screen.dart';

void main() {
  runApp(const ExpensesTrackerApp());
}

class ExpensesTrackerApp extends StatelessWidget {
  const ExpensesTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ExpensesListScreen());
  }
}

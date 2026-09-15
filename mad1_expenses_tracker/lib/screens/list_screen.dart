import 'package:flutter/material.dart';
import 'package:mad1_expenses_tracker/models/expenses_item.dart';
import 'package:mad1_expenses_tracker/widgets/expenses_card.dart';
import 'package:mad1_expenses_tracker/widgets/expenses_entry.dart';

class ExpensesListScreen extends StatelessWidget {
  ExpensesListScreen({super.key});

  List<ExpensesItem> expensesList = [
    ExpensesItem(description: 'Gas', price: 500, date: DateTime.now()),
    ExpensesItem(description: 'House Rental', price: 1000),
    ExpensesItem(description: 'Shopping', price: 100),
    ExpensesItem(description: 'Misc', price: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Expenses Tracker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
        elevation: 5,
        // leading: Icon(Icons.heart_broken),
      ),
      body: Column(
        children: [
          ExpensesEntryWidget(),
          Expanded(
            child: Column(
              children: expensesList.map((item) {
                return ExpensesCard(
                  description: item.description,
                  amount: item.price,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

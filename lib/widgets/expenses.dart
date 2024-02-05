import 'package:abdullah/models/expense.dart';
import 'package:abdullah/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter',
        amount: 20.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'abdullah',
        amount: 20.99,
        date: DateTime.now(),
        category: Category.fun),
    Expense(
        title: 'abdullah',
        amount: 20.99,
        date: DateTime.now(),
        category: Category.fun),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('char here.....'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          )
        ],
      ),
    );
  }
}

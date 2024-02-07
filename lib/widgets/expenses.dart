import 'package:abdullah/models/expense.dart';
import 'package:abdullah/widgets/expenses_list/expenses_list.dart';
import 'package:abdullah/widgets/new_expense.dart';
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

  void _openAddExpenseOvelay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "اضافة",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 105, 142, 255),
                  Color(0xFF00CCFF),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOvelay,
            icon: const Icon(Icons.add_box_rounded),
          ),
        ],
        toolbarHeight: 50,
      ),
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

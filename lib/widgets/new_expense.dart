import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titlecontroller = TextEditingController();
  final _moneycontroller = TextEditingController();

  @override
  void dispose() {
    _titlecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titlecontroller,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('العنوان'),
            ),
          ),
          TextField(
            controller: _moneycontroller,
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '\$',
              label: Text('الكمية'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titlecontroller.text);
                  print(_moneycontroller.text);
                },
                child: const Text('حفظ التكاليف'),
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFFFBFFFF),
                  backgroundColor: Color(0xFF3F9B31),
                ),
              ),
              const SizedBox(
                width: 55,
              ),
              ElevatedButton(
                onPressed: () {
                  _titlecontroller.clear();
                  _moneycontroller.clear();
                },
                child: const Text('الغاء التكاليف'),
              ),
            ],
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              _titlecontroller.clear();
              _moneycontroller.clear();

              Navigator.pop(context);
            },
            child: const Text('خروج التكاليف'),
            style: TextButton.styleFrom(
              foregroundColor: Color(0xFFFBFFFF),
              backgroundColor: Color(0xFFFD7066),
            ),
          ),
        ],
      ),
    );
  }
}

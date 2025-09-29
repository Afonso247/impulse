import 'package:flutter/material.dart';

import 'package:impulse/models/expense.dart';
import 'package:impulse/components/expenses_list.dart';

class Impulse extends StatefulWidget {
  const Impulse({super.key});

  @override
  State<Impulse> createState() => _ImpulseState();
}

class _ImpulseState extends State<Impulse> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Comida',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.comida,
    ),
    Expense(
      title: 'Lazer',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.lazer,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Impulse'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}

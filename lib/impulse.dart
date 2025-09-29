import 'package:flutter/material.dart';

import 'package:impulse/models/expense.dart';

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
      body: Column(children: const [
        Text('Impulse'),
        Text('Lista de compras...'),
      ],),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:impulse/models/expense.dart';
import 'package:impulse/components/expenses_list.dart';
import 'package:impulse/components/new_expense.dart';

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

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Supertroco'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _openAddExpenseOverlay,
          ),
        ],
      ),
      body: Column(
        children: [
          Text('Organize seus gastos'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}

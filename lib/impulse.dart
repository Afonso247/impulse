import 'package:flutter/material.dart';

import 'package:impulse/models/expense.dart';
import 'package:impulse/components/expenses_list.dart';
import 'package:impulse/components/new_expense.dart';
import 'package:impulse/components/chart/chart.dart';

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
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Despesa excluída!'),
        action: SnackBarAction(
          label: 'Desfazer',
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    Widget listContent = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 48),
          Icon(
            Icons.receipt_long_outlined,
            size: 64,
            // ignore: deprecated_member_use
            color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
          ),
          const SizedBox(height: 16),
          Text(
            'Nenhuma despesa cadastrada!',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Toque no + para adicionar',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              // ignore: deprecated_member_use
              color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );

    if (_registeredExpenses.isNotEmpty) {
      listContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Impulse', style: TextStyle(fontSize: 28)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _openAddExpenseOverlay,
          ),
        ],
      ),
      body: width >= 600
          ? Row(
              children: [
                Expanded(
                  child: Chart(expenses: _registeredExpenses),
                ),
                Expanded(
                  child: listContent,
                ),
              ],
            )
          : Column(
              children: [
                Chart(expenses: _registeredExpenses),
                const SizedBox(height: 16),
                Expanded(
                  child: listContent,
                ),
              ],
            ),
    );
  }
}

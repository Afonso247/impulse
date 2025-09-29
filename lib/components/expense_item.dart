import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:impulse/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'R\$ ${NumberFormat.currency(locale: 'pt_BR', symbol: '').format(expense.amount)}',
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.calendar_month, color: Theme.of(context).primaryColor),
                    const SizedBox(width: 8),
                    Text(expense.date.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

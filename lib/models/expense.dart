import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

enum Category {
  comida,
  lazer,
  trabalho,
  viagem,
}

const categoryIcons = {
  Category.comida: Icons.lunch_dining,
  Category.lazer: Icons.movie,
  Category.trabalho: Icons.work,
  Category.viagem: Icons.flight,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate => DateFormat('dd/MM/yyyy').format(date);

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
}
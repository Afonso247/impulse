import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Cadastrar despesa'),
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: 'Título'),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () => debugPrint(_titleController.text),
                child: const Text('Salvar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

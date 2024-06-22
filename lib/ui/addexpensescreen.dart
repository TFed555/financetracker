import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finance_tracker1/bloc/finances_bloc.dart';
import 'package:finance_tracker1/models/expense.dart';
import 'package:finance_tracker1/services/repository.dart';

const List<String> categories = [
  'Food',
  'Clothing',
  'Medicine',
  'Household',
  'Pets',
  'Savings',
];

class AddExpenseScreen extends StatefulWidget {
  final int userId;

  const AddExpenseScreen({super.key, required this.userId});

  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  String _selectedCategory = categories.first;

  void _addExpense(BuildContext context) {
    final amount = double.tryParse(_amountController.text) ?? 0.0;
    final title = _titleController.text;
    final category = _selectedCategory;

    final expense = Expense(
      userId: widget.userId,
      category: category,
      amount: amount,
      title: title,
      date: DateTime.now(),
    );

    BlocProvider.of<FinancesBloc>(context).add(FinancesEvent.addExpense(expense));

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FinancesBloc(Repository())
        ..add(FinancesEvent.fetched(userId: widget.userId)),
      child: Builder(
        builder: (newContext) => Scaffold(
          appBar: AppBar(
            title: const Text('Add Expense'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  value: _selectedCategory,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedCategory = value;
                      });
                    }
                  },
                  items: categories.map((category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'Category',
                  ),
                ),
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _addExpense(newContext),
                  child: const Text('Add Expense'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    _titleController.dispose();
    super.dispose();
  }

}

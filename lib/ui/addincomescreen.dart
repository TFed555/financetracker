import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finance_tracker1/bloc/finances_bloc.dart';
import 'package:finance_tracker1/models/income.dart';
import 'package:finance_tracker1/services/repository.dart';

const List<String> sources = [
  'Job',
  'Savings'
];

class AddIncomeScreen extends StatefulWidget {
  final int userId;

  const AddIncomeScreen({super.key, required this.userId});

  @override
  _AddIncomeScreenState createState() => _AddIncomeScreenState();
}

class _AddIncomeScreenState extends State<AddIncomeScreen> {
  final TextEditingController _amountController = TextEditingController();
  String _selectedSource = sources.first;

  void _addIncome(BuildContext context) {
    final amount = double.tryParse(_amountController.text) ?? 0.0;
    final source = _selectedSource;

    final income = Income(
      source: source,
      userId: widget.userId,
      amount: amount,
      date: DateTime.now(),
    );

    BlocProvider.of<FinancesBloc>(context).add(FinancesEvent.addIncome(income));

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
                  value: _selectedSource,
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedSource = value;
                      });
                    }
                  },
                  items: sources.map((category) {
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
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _addIncome(newContext),
                  child: const Text('Add Income'),
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
    super.dispose();
  }

}
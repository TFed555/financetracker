import 'package:flutter/material.dart';
import 'addexpensescreen.dart';
import 'addincomescreen.dart';
import 'package:finance_tracker1/ui/widgets/loading.dart';
import 'package:finance_tracker1/ui/widgets/error_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finance_tracker1/bloc/finances_bloc.dart';
import 'package:finance_tracker1/services/repository.dart';
import 'package:finance_tracker1/models/expense.dart';
import 'package:finance_tracker1/models/income.dart';
import 'package:finance_tracker1/ui/graph.dart';

class HomeScreen extends StatelessWidget {
  final int userId;

  const HomeScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FinancesBloc(Repository())
        ..add(FinancesEvent.fetched(userId: userId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Finance Tracker'),
        ),
        body:
            BlocBuilder<FinancesBloc, FinancesState>(builder: (context, state) {
          return state.when(
            updatedExpenses: (_) => const SizedBox(),
            updatedIncomes: (_) => const SizedBox(),
            initial: () => const SizedBox(),
            loading: () => const Loading(),
            error: (err) => Failure(err: err),
            loaded: (List<Expense> expenses, List<Income> incomes) {
              final data = _prepareChartData(expenses, incomes);
              if(expenses.isNotEmpty || incomes.isNotEmpty) {
                return PieChartWidget(data: data);
              }
              else {
                return Text('No data yet');
              }
            },
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showOptions(context, userId),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

void _showOptions(BuildContext context, int userId) {
  showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        final ButtonStyle style =
            ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
        return Container(
          height: 200,
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: style,
                  child: const Text('Add Expenses'),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddExpenseScreen(userId: userId)),
                    );
                  },
                ),
                ElevatedButton(
                  style: style,
                  child: const Text('Add Incomes'),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddIncomeScreen(userId: userId)),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      });
}

List<CategoryData> _prepareChartData(
    List<Expense> expenses, List<Income> incomes) {
  final Map<String, double> dataMap = {};

  for (var expense in expenses) {
    dataMap[expense.category] =
        (dataMap[expense.category] ?? 0) + expense.amount;
  }

  for (var income in incomes) {
    dataMap[income.source] = (dataMap[income.source] ?? 0) + income.amount;
  }

  return dataMap.entries
      .map((entry) => CategoryData(entry.key, entry.value))
      .toList();
}

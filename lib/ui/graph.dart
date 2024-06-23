import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

import 'package:finance_tracker1/models/expense.dart';
import 'package:finance_tracker1/models/income.dart';


class CategoryData {
  final String categoryOrSource;
  final double amount;

  CategoryData(this.categoryOrSource, this.amount);
}

List<String> views = [
  'Total',
  'Expenses',
  'Incomes'
];

class FinanceChart extends StatefulWidget {
  final List<Expense> expenses;
  final List<Income> incomes;

  const FinanceChart({required this.expenses, required this.incomes, Key? key}) : super(key: key);

  @override
  _FinanceChartState createState() => _FinanceChartState();
}

class _FinanceChartState extends State<FinanceChart> {
  String _selectedView = views[0];
  DateTime _selectedMonth = DateTime.now();
  late List<DateTime> _availableMonths;

  @override
  void initState() {
    super.initState();
    _availableMonths = _getAvailableMonths(widget.expenses, widget.incomes);
    _selectedMonth = _availableMonths.first;
    _selectedView = views[0];
  }

  @override
  Widget build(BuildContext context) {
    List<CategoryData> chartData;
    List<Expense> filteredExpenses = filterExpensesByMonth(widget.expenses, _selectedMonth.month, _selectedMonth.year);
    List<Income> filteredIncomes = filterIncomesByMonth(widget.incomes, _selectedMonth.month, _selectedMonth.year);

    if (_selectedView == views[0]) {
      chartData = prepareTotalData(filteredExpenses, filteredIncomes);
    } else if (_selectedView == views[1]) {
      chartData = prepareExpenseData(filteredExpenses);
    } else {
      chartData = prepareIncomeData(filteredIncomes);
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<String>(
              value: _selectedView,
              items: [
                DropdownMenuItem(value: views[0], child: const Text('Total Expenses and Incomes')),
                DropdownMenuItem(value: views[1], child: const Text('Expenses by Category')),
                DropdownMenuItem(value: views[2], child: const Text('Incomes by Source')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedView = value!;
                });
              },
            ),
            DropdownButton<DateTime>(
                value: _selectedMonth,
                items: _availableMonths.map((date) {
                  return DropdownMenuItem<DateTime>(
                    value: date,
                    child: Text(DateFormat.yMMM().format(date)),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedMonth = value!;
                  });
                })
          ],
        ),
        Expanded(
          flex: 4,
          child: SfCircularChart(
            legend: Legend(isVisible: true),
            series: <CircularSeries>[
              PieSeries<CategoryData, String>(
                dataSource: chartData,
                xValueMapper: (CategoryData data, _) => data.categoryOrSource,
                yValueMapper: (CategoryData data, _) => data.amount,
                dataLabelMapper: (CategoryData data, _) => '${data.categoryOrSource}: ${data.amount}',
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<CategoryData> prepareTotalData(List<Expense> expenses, List<Income> incomes) {
    final totalExpense = expenses.fold(0.0, (sum, item) => sum + item.amount);
    final totalIncome = incomes.fold(0.0, (sum, item) => sum + item.amount);

    return [
      CategoryData('Total Expenses', totalExpense),
      CategoryData('Total Incomes', totalIncome),
    ];
  }

  List<CategoryData> prepareExpenseData(List<Expense> expenses) {
    final Map<String, double> dataMap = {};

    for (var expense in expenses) {
      dataMap[expense.category] =
          (dataMap[expense.category] ?? 0) + expense.amount;
    }

    return dataMap.entries
        .map((entry) => CategoryData(entry.key, entry.value))
        .toList();
  }

  List<CategoryData> prepareIncomeData(List<Income> incomes) {
    final Map<String, double> dataMap = {};

    for (var income in incomes) {
      dataMap[income.source] =
          (dataMap[income.source] ?? 0) + income.amount;
    }

    return dataMap.entries
        .map((entry) => CategoryData(entry.key, entry.value))
        .toList();
  }
}

List<DateTime> _getAvailableMonths(List<Expense> expenses, List<Income> incomes) {
  final allDates = expenses.map((e) => DateTime(e.date.year, e.date.month))
      .followedBy(incomes.map((i) => DateTime(i.date.year, i.date.month)))
      .toSet()
      .toList();

  allDates.sort((a, b) => b.compareTo(a));
  return allDates;
}

List<Expense> filterExpensesByMonth(List<Expense> expenses, int month, int year) {
  return expenses.where((expense) =>
  expense.date.month == month && expense.date.year == year).toList();
}

List<Income> filterIncomesByMonth(List<Income> incomes, int month, int year) {
  return incomes.where((income) =>
  income.date.month == month && income.date.year == year).toList();
}


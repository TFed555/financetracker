import 'package:finance_tracker1/bd/app_database.dart';
class Expense {
  final String title;
  final double amount;
  final DateTime date;
  final String category;
  final int userId;

  Expense({required this.title, required this.amount, required this.date,
    required this.category, required this.userId});

  factory Expense.fromDataBase(ExpenseTableData dbItem) => Expense(
      title: dbItem.title,
      amount: dbItem.amount,
      date: dbItem.date,
      category: dbItem.category,
      userId: dbItem.userId
  );

}
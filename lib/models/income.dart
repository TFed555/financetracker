import 'package:finance_tracker1/bd/app_database.dart';
class Income {
  final String source;
  final double amount;
  final DateTime date;
  final int userId;

  Income({required this.source, required this.amount, required this.date,
    required this.userId});

  factory Income.fromDataBase(IncomeTableData dbItem) => Income(
      source: dbItem.source,
      amount: dbItem.amount,
      date: dbItem.date,
      userId: dbItem.userId
  );
}
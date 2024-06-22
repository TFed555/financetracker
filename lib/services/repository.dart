import 'package:drift/drift.dart';
import 'package:finance_tracker1/bd/app_database.dart';
import 'package:finance_tracker1/models/expense.dart';
import 'package:finance_tracker1/models/income.dart';

abstract class IRepository {
  Future <List<Expense>> fetchExpenses();

  Future<void> addExpense(Expense expense);

  Future <List<Income>> fetchIncomes();

  Future<void> addIncome(Income income);

}

class Repository implements IRepository {

  @override
  Future <List<Expense>> fetchExpenses() async {
    final db = AppDatabaseProvider.instance;
    final List<Expense> expenseItems = [];
    try {
      final items = await db.getExpenses();
      expenseItems.addAll(items.map((e) => Expense.fromDataBase(e)));
      // await db.deleteAllExpenses();
      // await db.deleteAllIncomes();
      return expenseItems;
    }
    catch (_){
      rethrow;
    }
  }

  @override
  Future<void> addExpense(Expense expense) async {
    final db = AppDatabaseProvider.instance;
    await db.insertNewExpense(expense);
  }

  @override
  Future <List<Income>> fetchIncomes() async {
    final db = AppDatabaseProvider.instance;
    final List<Income> incomeItems = [];
    try {
      final items = await db.getIncomes();
      incomeItems.addAll(items.map((e) => Income.fromDataBase(e)));
      return incomeItems;
    }
    catch (_){
      rethrow;
    }
  }

  @override
  Future<void> addIncome(Income income) async {
    final db = AppDatabaseProvider.instance;
    await db.insertNewIncome(income);
  }


}

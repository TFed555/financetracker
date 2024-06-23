import 'dart:io';
import 'package:finance_tracker1/bd/expense_table.dart';
import 'package:finance_tracker1/bd/income_table.dart';
import 'package:finance_tracker1/bd/users_table.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:finance_tracker1/models/expense.dart';
import 'package:finance_tracker1/models/income.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [ExpenseTable, UsersTable, IncomeTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;


  Future<UsersTableData?> getUser(String username, String password) {
    return (select(usersTable)
      ..where((tbl) => tbl.username.equals(username) &
      tbl.password.equals(password)))
        .getSingleOrNull();
  }

  Future<bool> insertNewUser(String login, String password) async {
    final res = await (select(usersTable)..where((t) => t.username.equals(login))).get();
    if (res.isEmpty) {
      final companion = UsersTableCompanion.insert(
        username: login,
        password: password,
      );
      await into(usersTable).insert(companion);
      return true;
    }
    return false;
  }

  Future<void> insertNewExpense(Expense expense) async {
    final companion = ExpenseTableCompanion.insert(
      title: expense.title,
      amount: expense.amount,
      category: expense.category,
      date: expense.date,
      userId: expense.userId,
    );
    await into(expenseTable).insert(companion);
  }

  Future<void> insertNewIncome(Income income) async {
    final companion = IncomeTableCompanion.insert(
      source: income.source,
      amount: income.amount,
      date: income.date,
      userId: income.userId,
    );
    await into(incomeTable).insert(companion);
  }

  Future<List<ExpenseTableData>> getExpenses(int userId) {
    return (select(expenseTable)..where((tbl) => tbl.userId.equals(userId))).get();
  }
  Future<List<IncomeTableData>> getIncomes(int userId) {
    return (select(incomeTable)..where((tbl) => tbl.userId.equals(userId))).get();
  }

  Future<ExpenseTableData> getExpense() => select(expenseTable).getSingle();

  Future<void> deleteAllExpenses() => delete(expenseTable).go();
  Future<void> deleteAllIncomes() => delete(incomeTable).go();
}

class AppDatabaseProvider {
  static final AppDatabase _instance = AppDatabase();

  static AppDatabase get instance => _instance;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'finances.sqlite'));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = (await getTemporaryDirectory()).path;

    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);

  });
}

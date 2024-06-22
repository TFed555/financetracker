import 'package:drift/drift.dart';

class ExpenseTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  RealColumn get amount => real()();
  DateTimeColumn get date => dateTime() ();
  TextColumn get category => text().withLength(min: 1, max: 50)();
  IntColumn get userId => integer().customConstraint('REFERENCES UsersTable(id)')();
}

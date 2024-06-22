import 'package:drift/drift.dart';

class IncomeTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get source => text().withLength(min: 1, max: 50)();
  RealColumn get amount => real()();
  DateTimeColumn get date => dateTime()();
  IntColumn get userId => integer().customConstraint('REFERENCES UsersTable(id)')();
}

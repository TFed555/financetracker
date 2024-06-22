import 'package:finance_tracker1/bd/app_database.dart';

class User {
  final int id;
  final String username;
  final String password;

  User({required this.id, required this.username, required this.password});

  factory User.fromDataBase(UsersTableData dbItem) => User(
    id: dbItem.id,
    username: dbItem.username,
    password: dbItem.password,
  );

}
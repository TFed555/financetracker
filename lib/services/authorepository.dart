import 'package:finance_tracker1/bd/app_database.dart';
import 'package:finance_tracker1/models/user.dart';

abstract class IRepository {
  Future<bool> passData({required String login, required String password});

  Future<User> getUser({required String login, required String password});

  Future<bool> createUser({required String login, required String password});
}

class AuthoRepository implements IRepository {
  @override
  Future <bool> passData({required String login, required String password}) async{
    await Future.delayed(const Duration(seconds: 2));
    final db = AppDatabaseProvider.instance;
    final user = await db.getUser(login, password);

    return user != null;
  }

  @override
  Future <User> getUser({required String login, required String password}) async {
    final db = AppDatabaseProvider.instance;
    final item = await db.getUser(login, password);
    final User user = User.fromDataBase(item!);

    return user;
  }

  @override
  Future<bool> createUser({required String login, required String password}) async {
    final db = AppDatabaseProvider.instance;
    final user = await db.insertNewUser(login, password);

    return user;
  }

}
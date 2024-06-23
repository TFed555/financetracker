import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finance_tracker1/bloc/finances_bloc.dart';
import 'package:finance_tracker1/bloc/autho_bloc.dart';
import 'package:finance_tracker1/ui/authoscreen.dart';
import 'package:finance_tracker1/services/repository.dart';
import 'package:finance_tracker1/services/authorepository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AuthoRepository authoRepository = AuthoRepository();
  final Repository financesRepository = Repository();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthoBloc>(
          create: (context) => AuthoBloc(authoRepository),
        ),
        BlocProvider<FinancesBloc>(
          create: (context) => FinancesBloc(financesRepository),
        ),
      ],
      child: MaterialApp(
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => const MyApp(),
        // },
        // title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const AuthoScreen(),
      ),
    );
  }
}

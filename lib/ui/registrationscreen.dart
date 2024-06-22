import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finance_tracker1/bloc/autho_bloc.dart';
import 'package:finance_tracker1/services/authorepository.dart';
import 'package:finance_tracker1/ui/widgets/loading.dart';
import 'authoscreen.dart';

var _controller = TextEditingController();
var _controller1 = TextEditingController();

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  void _validation(BuildContext context, String email, String password) {
    BlocProvider.of<AuthoBloc>(context)
        .add(AuthoEvent.signUp(username: email, password: password));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthoBloc(AuthoRepository()),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Registration'),
              backgroundColor: Colors.deepPurple,
            ),
            body: BlocListener<AuthoBloc, AuthoState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () => const Loading(),
                  validate: () {},
                  authenticated: (user) {
                    Navigator.of(context).pop(
                      MaterialPageRoute(
                        builder: (context) => const AuthoScreen(),
                      ),
                    );
                  },
                  registration: () {},
                  failure: (err) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(err),
                      duration: const Duration(milliseconds: 1500),
                    ));
                  },
                );
              },
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: _controller.clear,
                                icon: const Icon(Icons.clear)),
                            labelText: 'Login',
                            helperText: 'Create your login',
                            filled: true),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        controller: _controller1,
                        obscuringCharacter: "*",
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: _controller1.clear,
                              icon: const Icon(Icons.clear)),
                          labelText: 'Password',
                          helperText: 'Create a password',
                          filled: true,
                        ),
                      ),
                    ),
                    BlocBuilder<AuthoBloc, AuthoState>(
                      builder: (context, state) {
                        return SizedBox(
                          height: 50,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () => _validation(
                                context, _controller.text, _controller1.text),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('Registration',
                                style: TextStyle(fontSize: 20)),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

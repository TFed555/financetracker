import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finance_tracker1/bloc/autho_bloc.dart';
import 'homescreen.dart';
import 'package:finance_tracker1/ui/widgets/loading.dart';
import 'package:finance_tracker1/ui/registrationscreen.dart';

var _controller = TextEditingController();
var _controller1 = TextEditingController();

class AuthoScreen extends StatelessWidget {
  const AuthoScreen({super.key});

  void _Validation(BuildContext context, String email, String password) {
    _controller.clear;
    _controller1.clear;
    BlocProvider.of<AuthoBloc>(context)
        .add(AuthoEvent.signIn(username: email, password: password));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorisation'),
        backgroundColor: Colors.deepPurple,
      ),
      body: BlocListener<AuthoBloc, AuthoState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () => const Loading(),
            validate: () {},
            authenticated: (user) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(userId: user.id),
                ),
              );
            },
            registration: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegistrationScreen(),
                ),
              );
            },
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
                      helperText: 'Enter your login',
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
                      onPressed: () => _Validation(
                          context, _controller.text, _controller1.text),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                      ),
                      child:
                          const Text('Enter', style: TextStyle(fontSize: 20)),
                    ),
                  );
                },
              ),
              const SizedBox(),
              TextButton(
                child: const Text('Don\'t have an account?'),
                onPressed: () {
                  BlocProvider.of<AuthoBloc>(context)
                      .add(const AuthoEvent.registration());
                  _controller1.clear;
                  _controller.clear;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

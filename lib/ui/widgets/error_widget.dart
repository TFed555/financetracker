import 'package:flutter/material.dart';


class Failure extends StatelessWidget {
  final String err;
  const Failure({super.key, required this.err});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(err, style: const TextStyle(fontSize: 20)),
              ElevatedButton(
                onPressed: () {
                  // _Pressed(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Ок', style: TextStyle(fontSize: 20)),
              ),
            ]));
  }
}
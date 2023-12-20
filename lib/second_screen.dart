import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/routers/route_constants.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Second Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.go(RouteConstants().thirdScreen);
            },
            child: const Text(
              "Go to Third Screen",
              style: TextStyle(color: Colors.teal),
            )),
      ),
    );
  }
}

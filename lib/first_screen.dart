import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/routers/route_constants.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "First Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.go(RouteConstants().secondScreen);
            },
            child: const Text(
              "Go to Second Screen",
              style: TextStyle(color: Colors.red),
            )),
      ),
    );
  }
}

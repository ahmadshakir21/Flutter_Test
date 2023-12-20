import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/routers/route_constants.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Third Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.go(RouteConstants().homeScreen);
            },
            child: const Text(
              "Go to Home Screen",
              style: TextStyle(color: Colors.purple),
            )),
      ),
    );
  }
}

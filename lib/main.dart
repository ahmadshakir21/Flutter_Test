import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/routers/route_config.dart';
import 'package:my_app/routers/route_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.go(RouteConstants().firstScreen);
            },
            child: const Text(
              "Go to First Screen",
              style: TextStyle(color: Colors.indigo),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "Home Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  String user1 = "user 1";
                  context.go('/details/$user1');
                },
                child: const Text("First User")),
            ElevatedButton(
                onPressed: () {
                  String user2 = "user 2";
                  context.go('/details/$user2');
                },
                child: const Text("Second User")),
            ElevatedButton(
                onPressed: () {
                  String user3 = "user 3";
                  context.go('/details/$user3');
                },
                child: const Text("Third User"))
          ],
        ),
      ),
    );
  }
}

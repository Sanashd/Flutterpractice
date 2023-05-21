import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Coding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalouge App"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter for $name"),
          ),
        ),
        drawer: const Drawer(
         
        ));
  }
}


import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student ID Card'),
      ),
    );
  }
}
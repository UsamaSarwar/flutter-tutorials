import 'package:flutter/material.dart';

import '../Functions/switch_theme.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        actions: [
          // Switch Theme Button
          IconButton(
            onPressed: () {
              // Switch Theme
              setState(() {
                switchTheme(context);
              });
            },
            icon: const Icon(Icons.light_mode),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}

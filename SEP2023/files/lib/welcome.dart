import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome!'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

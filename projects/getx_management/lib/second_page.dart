import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App Screen 2'),
      ),
      body: const Center(
        child: Text(
          'Second Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

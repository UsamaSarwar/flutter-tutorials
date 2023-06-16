import 'package:flutter/material.dart';

import '../Functions/switch_theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
            Navigator.pop(context);
            //! Navigator.pushNamed(context, '/');
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}

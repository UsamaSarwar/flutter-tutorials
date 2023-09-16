// Material Library is used for Material Design by Google
import 'package:flutter/material.dart';

main() {
  // runApp is responsible for running the app
  runApp(
    // Material App is the root widget of the app
    MaterialApp(
      title: 'Hello World App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent.withOpacity(0.1),
          title: const Text('Hello World App'),
        ),
        body: const Center(
          child: Text(
            'Hello World',
          ),
        ),
      ),
    ),
  );
}

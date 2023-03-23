// Material Package for Flutter
import 'package:flutter/material.dart';

// Entry Point of the App
void main(List<String> args) {
  runApp(
    // runApp() is a built-in function that runs the app
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text('Hello World App'),
        ),
        body: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    ),
  );
}

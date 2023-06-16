// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        // useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          actions: [
            IconButton(
              onPressed: () {
                increment();
                setState(() {});
              },
              icon: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        body: Center(
          child: Text(
            count.toString(), // '$count',
            style: TextStyle(
              fontSize: 50,
              color: Colors.redAccent[700],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            increment();
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('AppBar Title'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    ),
  );
}

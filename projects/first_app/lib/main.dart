import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('This is a Text Widget'),
        ),
        body: const Center(
          child: Text('This is a Text Widget'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    ),
  );
}

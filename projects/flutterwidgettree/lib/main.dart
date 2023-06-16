// Importing Material UI Kit Package
import 'package:flutter/material.dart';

// Main Function
void main() {
  // Running the App
  runApp(const MyApp());
}

// Stateless Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Tree',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu_rounded),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
          centerTitle: true,
          // backgroundColor: Colors.deepPurple,
          title: const Text('Sindh Agriculture University, Umerkot'),
        ),
        body: Container(
          // color: Colors.deepPurple.withOpacity(0.1),
          child: const Center(
            child: Text(
              'Sindh Agriculture University, Umerkot',
              style: TextStyle(
                // color: Colors.deepPurple,
                fontSize: 20,
                // letterSpacing: 2.0,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

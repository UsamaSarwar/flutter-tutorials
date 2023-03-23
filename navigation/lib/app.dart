import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation/Screens/login.dart';

import 'Screens/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navifation App',
      // Initial Route
      initialRoute: '/',
      // Routes
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const Home(),
      },
      // Theme Mode
      // themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
          primarySwatch: Colors.pink,
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            color: Colors.pink,
          
          )),
      //? home: const Login(),
    );
  }
}

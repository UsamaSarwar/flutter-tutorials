import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/controller.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
  Get.put(Controller());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive UI',
      home: Home(),
    );
  }
}

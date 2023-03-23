import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/Controller.dart';
import 'Views/tasbih_counter_page.dart';

void main() {
  runApp(const TasbihCounterApp());
  Get.put(Controller());
}

class TasbihCounterApp extends StatelessWidget {
  const TasbihCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Tasbih Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  TasbihCounterPage(title: 'Tasbih Counter'),
    );
  }
}

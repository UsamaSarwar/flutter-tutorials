import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CounterStatelessApp extends StatelessWidget {
  CounterStatelessApp({super.key});
  RxInt num = 0.obs;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Obx(() => Text(
                num.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            num++;
            print(num);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

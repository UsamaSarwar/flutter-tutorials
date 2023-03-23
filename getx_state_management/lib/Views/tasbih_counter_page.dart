import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/Functions/increment.dart';

import '../Controller/Controller.dart';

class TasbihCounterPage extends StatelessWidget {
  TasbihCounterPage({super.key, required this.title});
  final String title;
  final Controller c = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  c.getCounter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.setCounter = increment(c.getCounter),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

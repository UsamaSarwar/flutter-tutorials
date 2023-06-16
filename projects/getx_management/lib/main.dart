import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second_page.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  RxInt num = 0.obs;
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App Screen 1'),
          actions: [
            // Switch theme using GetX
            IconButton(
              onPressed: () {
                Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                );
              },
              icon: const Icon(Icons.lightbulb),
            ),
            IconButton(
              onPressed: () {
                Get.to(
                  const SecondPage(),
                  arguments: num,
                );
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Obx(() => Text(
                    num.toString(),
                    style: const TextStyle(fontSize: 50),
                  )),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            num++;
            // print(num);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

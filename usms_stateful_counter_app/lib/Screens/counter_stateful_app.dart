import 'package:flutter/material.dart';

class CounterStatefulApp extends StatefulWidget {
  const CounterStatefulApp({super.key});

  @override
  State<CounterStatefulApp> createState() => _CounterStatefulAppState();
}

class _CounterStatefulAppState extends State<CounterStatefulApp> {
  int num = 0;
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
          child: Text(
            num.toString(),
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              num++;
            });

            print(num);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

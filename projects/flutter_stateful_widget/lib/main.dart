import 'package:flutter/material.dart';

main() => runApp(App());



class App extends StatefulWidget {

  App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Counter App'),
        ),
        body: Center(
          child: Text(
            num.toString(),
            style: const TextStyle(
              fontSize: 100.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() => num++);
            // setState((){
            //   Body of setState is executed first
            // });
           
            print('The value of num is $num');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

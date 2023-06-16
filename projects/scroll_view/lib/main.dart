import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Scrollable',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Scrollable'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 20; i++)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.person),
                      )
                  ],
                ),
              ),
              for (var i = 0; i < 20; i++)
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Card(
                    elevation: 5.0,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Usama Sarwar'),
                      subtitle: Text('+92 310 000 777 3'),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

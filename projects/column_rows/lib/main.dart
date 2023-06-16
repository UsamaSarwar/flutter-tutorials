import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Column and Rows',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Column and Rows'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('MainAxisAlignment.start'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('MainAxisAlignment.end'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('MainAxisAlignment.center'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('MainAxisAlignment.spaceBetween'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('MainAxisAlignment.spaceAround'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('MainAxisAlignment.spaceEvenly'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

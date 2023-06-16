import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const StatefulApp());
  // runApp(const StatelessApp()); // Stateless Widget
}

class StatefulApp extends StatefulWidget {
  const StatefulApp({super.key});

  @override
  State<StatefulApp> createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  static int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
          child: Text(
            count.toString(),
            style: TextStyle(
              fontSize: 100.0,
              // fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[900],
              fontFamily: 'IndieFlower',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          backgroundColor: Colors.red[600],
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

// Stateless Widget Example

// class StatelessApp extends StatelessWidget {
//   static int count = 0;
//   const StatelessApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Counter App'),
//           centerTitle: true,
//           backgroundColor: Colors.red[600],
//         ),
//         body: Center(
//           child: Text(
//             count.toString(),
//             style: TextStyle(
//               fontSize: 100.0,
//               // fontWeight: FontWeight.bold,
//               letterSpacing: 2.0,
//               color: Colors.grey[900],
//               fontFamily: 'IndieFlower',
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             count++;
//             print(count);
//           },
//           backgroundColor: Colors.red[600],
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }



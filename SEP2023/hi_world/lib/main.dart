import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.red,
      ),
      // Blank app
      debugShowCheckedModeBanner: false,
      title: 'Hi App', // In web-browser tab
      home: Scaffold(
        // Blank screen
        appBar: AppBar(
          // Blank app bar
          title: const Text('Contacts'), //  App bar title
        ),
        body: ListTile(
          leading: const Icon(Icons.account_circle, size: 35.1, color: Colors.blue),
          title: const Text('Usama Sarwar'),
          subtitle: const Text('+92 310 0007773'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon(Icons.video_call, size: 30, color: Colors.green),
              IconButton(
                icon: const Icon(Icons.video_call, size: 30.5, color: Colors.green),
                onPressed: () {
                  debugPrint('Video call button pressed');
                },
              ),
              // const SizedBox(width: 15),
              // const Icon(Icons.phone, size: 30, color: Colors.green),
              IconButton(
                icon: const Icon(Icons.phone, size: 30.5, color: Colors.green),
                onPressed: () {
                  debugPrint('Voice call button pressed');
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

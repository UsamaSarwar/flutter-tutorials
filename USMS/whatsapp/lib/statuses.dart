import 'package:flutter/material.dart';

import 'database.dart';

class Statuses extends StatefulWidget {
  const Statuses({super.key});

  @override
  State<Statuses> createState() => _StatusesState();
}

class _StatusesState extends State<Statuses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // List View Builder
      body: Column(
        children: [
          const ListTile(
            // Show images from picsum.photos
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://picsum.photos/seed/500/200/200'),
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey[300],
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent updates'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  // Show images from picsum.photos
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://picsum.photos/seed/$index/200/200'),
                  ),
                  title: Text(name[index]),
                  subtitle: Text('$index:0$index'),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.camera_alt),
        onPressed: () {
          setState(() {
            name.add('New Chat');
            chats.add('What\'s up Man');
          });
        },
      ),
    );
  }
}

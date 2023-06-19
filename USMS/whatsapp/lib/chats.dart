import 'package:flutter/material.dart';

import 'database.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // List View Builder
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            // Show images from picsum.photos
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/seed/$index/200/200') ,
            ),
            title: Text(name[index]),
            subtitle: Text(chats[index]),
            trailing: Text('$index:0$index'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
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

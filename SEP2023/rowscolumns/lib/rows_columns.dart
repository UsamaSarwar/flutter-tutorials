import 'package:flutter/material.dart';

class ContactsBook extends StatefulWidget {
  const ContactsBook({super.key});

  @override
  State<ContactsBook> createState() => _ContactsBookState();
}

class _ContactsBookState extends State<ContactsBook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger',
      home: Scaffold(
        appBar: AppBar(title: const Text('Messenger')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                elevation: 0,
                color: Colors.blueGrey.shade50.withOpacity(0.8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Statuses
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    // using circle avatar and using demo images
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=30'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=31'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=32'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=33'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=34'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=35'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=36'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=37'))),
                    Padding(padding: EdgeInsets.only(right: 10), child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=38'))),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Image.asset('assets/usama.jpg', height: 200, width: 200),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/usama.jpg')),
                      title: const Text('Usama Sarwar'),
                      subtitle: const Text('0310 0007773'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call, color: Colors.green)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=2')),
                      title: const Text('Muhammad Yahya'),
                      subtitle: const Text('0310 4445553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=3')),
                      title: const Text('Muhammad Ali'),
                      subtitle: const Text('0310 3335553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=4')),
                      title: const Text('Muhammad Umer'),
                      subtitle: const Text('0310 2225553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=1')),
                      title: const Text('Muhammad Usman'),
                      subtitle: const Text('0310 1115553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=5')),
                      title: const Text('Usama Sarwar'),
                      subtitle: const Text('0310 0007773'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=6')),
                      title: const Text('Muhammad Yahya'),
                      subtitle: const Text('0310 4445553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=7')),
                      title: const Text('Muhammad Ali'),
                      subtitle: const Text('0310 3335553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=8')),
                      title: const Text('Muhammad Umer'),
                      subtitle: const Text('0310 2225553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=9')),
                      title: const Text('Muhammad Usman'),
                      subtitle: const Text('0310 1115553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=10')),
                      title: const Text('Usama Sarwar'),
                      subtitle: const Text('0310 0007773'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=11')),
                      title: const Text('Muhammad Yahya'),
                      subtitle: const Text('0310 4445553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=12')),
                      title: const Text('Muhammad Ali'),
                      subtitle: const Text('0310 3335553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=13')),
                      title: const Text('Muhammad Umer'),
                      subtitle: const Text('0310 2225553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=14')),
                      title: const Text('Muhammad Usman'),
                      subtitle: const Text('0310 1115553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=15')),
                      title: const Text('Usama Sarwar'),
                      subtitle: const Text('0310 0007773'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=16')),
                      title: const Text('Muhammad Yahya'),
                      subtitle: const Text('0310 4445553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=17')),
                      title: const Text('Muhammad Ali'),
                      subtitle: const Text('0310 3335553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=18')),
                      title: const Text('Muhammad Umer'),
                      subtitle: const Text('0310 2225553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                    ListTile(
                      leading: const CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://picsum.photos/200?random=19')),
                      title: const Text('Muhammad Usman'),
                      subtitle: const Text('0310 1115553'),
                      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.call, color: Colors.green)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

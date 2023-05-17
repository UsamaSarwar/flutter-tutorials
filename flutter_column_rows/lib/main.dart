import 'package:flutter/material.dart';

void main() {
  runApp(const Portfolio());
}

// Portfolio App
class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Usama Sarwar',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue,
                          width: 3,
                        ),
                      ),
                      child: const CircleAvatar(
                        maxRadius: 80,
                        minRadius: 70,
                        backgroundColor: Colors.grey,
                        // Image
                        backgroundImage: NetworkImage(
                            'https://i0.wp.com/www.usama.dev/wp-content/uploads/2022/03/cropped-UsamaSarwar-1.png'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'USAMA SARWAR',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Lead Flutter Trainer',
                  style: TextStyle(color: Colors.blue[400]),
                ),
                const SizedBox(height: 10),
                Card(
                  color: Colors.cyan[50],
                  child: const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Contact Number'),
                    subtitle: Text('(+9231) 0000-777-3'),
                  ),
                ),
                Card(
                  color: Colors.amber[50],
                  child: const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email Address'),
                    subtitle: Text('contact@usama.dev'),
                  ),
                ),
                Card(
                  color: Colors.red[50],
                  child: const ListTile(
                    leading: Icon(Icons.web),
                    title: Text('Website'),
                    subtitle: Text('www.usama.dev'),
                  ),
                ),
                Card(
                  color: Colors.purple[50],
                  child: const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Address'),
                    subtitle: Text('Faisalabad, Punjab, Pakistan'),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Hire Me!',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

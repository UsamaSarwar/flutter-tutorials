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
        body: Center(
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://i0.wp.com/www.usama.dev/wp-content/uploads/2022/03/cropped-UsamaSarwar-1.png'),
                  ),
                ),
              ),
              const Text(
                'USAMA SARWAR',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text('Lead Flutter Trainer'),
              const SizedBox(height: 10),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Contact Number'),
                  subtitle: Text('(+9231) 0000-777-3'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email Address'),
                  subtitle: Text('contact@usama.dev'),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(Icons.web),
                  title: Text('Website'),
                  subtitle: Text('www.usama.dev'),
                ),
              ),
              const Card(
                child: ListTile(
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
    );
  }
}

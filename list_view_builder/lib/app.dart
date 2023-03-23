import 'package:flutter/material.dart';

import 'contact_details.dart';
import 'contacts.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contacts'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(contacts.keys.elementAt(index)[0]),
              ),
              title: Text(contacts.keys.elementAt(index)),
              subtitle: Text(contacts.values.elementAt(index)),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // info button
                  IconButton(
                    icon: const Icon(Icons.info),
                    onPressed: () {
                      // Navigate to Contact Details
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactDetails(
                            name: contacts.keys.elementAt(index),
                            number: contacts.values.elementAt(index),
                          ),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.call),
                    onPressed: () {
                      // Snackbar Calling Specific Contact
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Calling ${contacts.keys.elementAt(index)}...'),
                          duration: const Duration(seconds: 5),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

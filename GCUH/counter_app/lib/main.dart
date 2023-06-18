// Material Library: Contains all the Material Design Widgets
import 'package:flutter/material.dart';

// Main Function: Entry Point of the Application
main() {
  // runApp: Renders the Widget Tree on the Screen
  runApp(
    // MaterialApp: Provides the basic app structure
    MaterialApp(
      // debugShowCheckedModeBanner: Removes the Debug Banner
      debugShowCheckedModeBanner: false,
      // title: Title of the Application
      title: 'Make me rich',
      home: Scaffold(
        // Scaffold: Provides the basic Material Design Visual Layout Structure
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add Number', // tooltip: Displays the Tooltip
          child: const Icon(Icons.add),
          onPressed: () {}, // onPressed: Callback Function
        ),
        appBar: AppBar(
            // AppBar: Displays the AppBar on the Screen
            centerTitle: true, // centerTitle: Centers the Title
            title: const Text(
              // Text: Displays the Text on the Screen
              'Make me rich',
            )),
        body: const Center(
            // Center: Centers the child widget
            // Show some image from picsum or unsplash
            child: Image(
          // Image: Displays the Image on the Screen
          image: NetworkImage(
            // NetworkImage: Fetches the Image from the Network
            'https://picsum.photos/700/900',
          ),
        )),
      ),
    ),
  );
}

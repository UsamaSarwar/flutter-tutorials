// material.dart: Material is a visual-design kit that helps bring Google's design to life.
import 'package:flutter/material.dart';

// main(): Main function runs the program
void main() {
  // runApp(): Runs the app
  runApp(
    // MaterialApp(): A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.
    MaterialApp(
      // debugShowCheckedModeBanner: Whether to show the banner when in debug mode.
      debugShowCheckedModeBanner: false,
      // title: The title to use for the application.
      title: 'USMS',
      // theme: The colors to use for the application's widgets.
      themeMode: ThemeMode.light, // Use the system-provided theme mode (light or dark)
      theme: ThemeData(// ThemeData(): A theme describes the colors and typographic choices of an application.
        // primarySwatch: The color swatch to use for the application's primary color.
        primarySwatch: Colors.deepPurple,
        // visualDensity: Defines the density of the user interface.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // brightness: The overall brightness of this theme.
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(// ThemeData(): A theme describes the colors and typographic choices of an application.
        // primarySwatch: The color swatch to use for the application's primary color.
        primarySwatch: Colors.deepPurple,
        // visualDensity: Defines the density of the user interface.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // brightness: The overall brightness of this theme.
        brightness: Brightness.dark,
      ),
      // home: The widget for the default route of the app (Navigator.defaultRouteName, which is /).
      home: Scaffold(
        // Scaffold(): Implements the basic material design visual layout structure.
        // appBar: The app bar to display at the top of the scaffold.
        appBar: AppBar(
          // title: The primary widget displayed in the app bar.
          title: const Text('USMS'),
          // centerTitle: Whether the title should be centered.
          centerTitle: true,
        ),
        // body: The primary content of the scaffold.
        body: const Center(
          // Center(): A widget that centers its child within itself.
          child: Text(
            'University of Sufism',
            // style: The text style to apply to the text.
            style: TextStyle(
              // fontSize: The size of glyphs (in logical pixels) to use when painting the text.
              fontSize: 30,
              // color: The color to use when painting the text.
              color: Colors.deepPurple,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.mail),
        ),
      ),
    ),
  );
}

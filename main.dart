import 'package:flutter/material.dart';

/*
Import the material design Library, it provides widgets the material.dart is part of a FLUTTER SDK and implements in google material design guidelines for UI
google design system

import - dart keyword to include external libraries

package:flutter -  refers to the material design packages

this is essential for building flutter apps w/ a standard UI
* */

void main() {
  runApp(const MyApp()); //flutter app function initialize the app that attached on the root widget (main screen) to the screen.
}

class MyApp extends StatelessWidget { // MyApp Extends custom class
  // stateless widgets - base class for widgets that do not hold mutable


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Title App'),
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/snow.jpg',
              width: 150,
              height: 150,
            ),
            const Text(
              'Realyn',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
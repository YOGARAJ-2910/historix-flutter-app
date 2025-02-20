import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Import the Login Screen

void main() {
  runApp(HistoriXApp());
}

class HistoriXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HistoriX",
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        fontFamily: 'Roboto', // Make sure Roboto is included in `pubspec.yaml`
      ),
      home: LoginScreen(), // Start with Login Screen instead of HomeScreen
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(HistoriXApp());
}

class HistoriXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

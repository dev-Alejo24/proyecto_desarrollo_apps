import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(HyperagendadosApp());
}

class HyperagendadosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
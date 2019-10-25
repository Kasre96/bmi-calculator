import 'package:flutter/material.dart';
import 'screens/homescreen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0E1020)
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



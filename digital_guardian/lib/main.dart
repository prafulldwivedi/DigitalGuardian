import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(FraudDetectionApp());
}

class FraudDetectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fraud Detection App',
      theme: ThemeData(primarySwatch: const Color.fromARGB(255, 255, 97, 17)),
      home: SplashScreen(),
    );
  }
}

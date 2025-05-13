import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String domain;
  final bool isFraud;

  ResultScreen({required this.domain, required this.isFraud});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Check Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isFraud ? Icons.warning : Icons.check_circle,
              color: isFraud ? Colors.red : Colors.green,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              isFraud ? "$domain is Fraudulent!" : "$domain is Safe.",
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}

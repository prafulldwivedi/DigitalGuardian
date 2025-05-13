import 'package:flutter/material.dart';
import '../services/api_service.dart';
import 'result_screen.dart';

class FraudDetectionPage extends StatelessWidget {
  final domainController = TextEditingController();
  final phoneController = TextEditingController();

  void checkDomain(BuildContext context) async {
    final domain = domainController.text;
    final phone = phoneController.text;

    final result = await ApiService.verifyDomain(domain, phone);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (_) =>
                ResultScreen(domain: domain, isFraud: result['is_fraudulent']),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fraud Detection")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: domainController,
              decoration: InputDecoration(labelText: "Enter Domain"),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: "Enter Phone Number"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => checkDomain(context),
              child: Text("Check Now"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Map<String, dynamic>> verifyDomain(
    String domain,
    String phone,
  ) async {
    final response = await http.post(
      Uri.parse("http://<your-django-server>/api/verify/"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"domain": domain, "phone": phone}),
    );
    return jsonDecode(response.body);
  }
}

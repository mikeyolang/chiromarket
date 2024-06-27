import 'dart:convert';

import 'package:http/http.dart' as http;
import '../constants/api_constants.dart';

class HttpClient {
  static const String baseUrl = ApiConstants.apiKey;
  // Get Request
  static Future<Map<String, dynamic>> getRequest(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
    return handleResponse(response);
  }

// Post request
  static Future<Map<String, dynamic>> postRequest(
      String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return handleResponse(response);
  }

// Update Request
  static Future<Map<String, dynamic>> putRequest(
      String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.decode(data),
    );
    return handleResponse(response);
  }

// Delete Request
  static Future<Map<String, dynamic>> deleteRequest(String endpoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endpoint'));
    return handleResponse(response);
  }

  static Map<String, dynamic> handleResponse(http.Response response) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to Load data: ${response.statusCode}");
    }
  }
}

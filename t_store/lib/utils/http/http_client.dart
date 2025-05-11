import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseURL = 'https://www.seuendpointAPI.com.br';

  // Helper para requisições GET
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseURL/$endpoint'));
    return _handleResponse(response);
  }

  // Helper para requisições POST
  static Future<Map<String, dynamic>> post(
    String endpoint,
    dynamic data,
  ) async {
    final response = await http.post(
      Uri.parse('$_baseURL/$endpoint'),
      headers: {'Content- Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper para requisições PUT
  static Future<Map<String, dynamic>> put(
    String endpoint,
    dynamic data,
  ) async {
    final response = await http.put(
      Uri.parse('$_baseURL/$endpoint'),
      headers: {'Content- Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper para requisições DELETE
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseURL/$endpoint'));
    return _handleResponse(response);
  }

  // Lida com as Requisições HTTP
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Falhou ao carregar os dados: ${response.statusCode}');
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/env.dart';

class TransactorsException implements Exception {
  final String message;

  TransactorsException(this.message);

  @override
  String toString() => message;
}

class TransactorsService {
  final String baseUrl;

  TransactorsService({String? baseUrl})
      : baseUrl = baseUrl ?? Env.apiBaseUrl;

  Future<List<dynamic>> getTransactors() async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrl/transactors'));

      final data = response.body.isNotEmpty
          ? jsonDecode(response.body)
          : [];

      if (response.statusCode == 200) {
        return data;
      } else {
        throw TransactorsException(
            'Error fetching transactors.');
      }
    } catch (_) {
      throw TransactorsException(
          'Connection error with API.');
    }
  }
    
    Future<List<dynamic>> getUserTransactors(
      String token)  async {
      try {
        final response = await http.get(
          Uri.parse('$baseUrl/user-transactors'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
            }
          );

        final data = response.body.isNotEmpty
        ? jsonDecode(response.body)
        : [];

      if (response.statusCode == 200) {
        return data;
      } else {
        throw TransactorsException(
          'Error fetching transactors.');        
      }
    } catch (_) {
      throw TransactorsException(
        'Conecctions error with API');
    }
      }
  }
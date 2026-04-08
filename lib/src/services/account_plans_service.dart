import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/env.dart';

class AccountPlansException implements Exception {
  final String message;

  AccountPlansException(this.message);

  @override
  String toString() => message;
}

class AccountPlansService {
  final String baseUrl;

  AccountPlansService({String? baseUrl})
      : baseUrl = baseUrl ?? Env.apiBaseUrl;

  
  Future<List<dynamic>> getAccountPlans() async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrl/planos-de-conta'));

      final data = response.body.isNotEmpty
          ? jsonDecode(response.body)
          : [];

      if (response.statusCode == 200) {
        return data;
      } else {
        throw AccountPlansException(
            'Error fetching account plans.');
      }
    } catch (_) {
      throw AccountPlansException(
          'Connection error with API.');
    }
  }
}
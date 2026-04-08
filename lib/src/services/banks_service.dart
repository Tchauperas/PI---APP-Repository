import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/env.dart';

class BanksException implements Exception {
  final String message;

  BanksException(this.message);

  @override
  String toString() => message;
}

class BanksService {
  final String baseUrl;

  BanksService({String? baseUrl})
      : baseUrl = baseUrl ?? Env.apiBaseUrl;

  Future<List<dynamic>> getBanks() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/contas'));

      final data = response.body.isNotEmpty
          ? jsonDecode(response.body)
          : [];

      if (response.statusCode == 200) {
        return data;
      } else {
        throw BanksException('Error fetching banks.');
      }
    } catch (_) {
      throw BanksException('Connection error with API.');
    }
  }

  Future<void> createBank(Map<String, dynamic> body) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/contas'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw BanksException('Error creating bank.');
      }
    } catch (_) {
      throw BanksException('Connection error with API.');
    }
  }

  Future<void> updateBank(int id, Map<String, dynamic> body) async {
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/contas/$id'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode != 200) {
        throw BanksException('Error updating bank.');
      }
    } catch (_) {
      throw BanksException('Connection error with API.');
    }
  }

  Future<void> deleteBank(int id) async {
    try {
      final response =
          await http.delete(Uri.parse('$baseUrl/contas/$id'));

      if (response.statusCode != 200) {
        throw BanksException('Error deleting bank.');
      }
    } catch (_) {
      throw BanksException('Connection error with API.');
    }
  }
}
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../config/env.dart';

class LoginResult {
  final String token;
  final String message;

  LoginResult({
    required this.token,
    required this.message,
  });
}

class LoginException implements Exception {
  final String message;

  LoginException(this.message);

  @override
  String toString() => message;
}

class LoginService {
  final String baseUrl;

  LoginService({String? baseUrl})
      : baseUrl = baseUrl ?? Env.apiBaseUrl;

  Future<LoginResult> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email.trim(),
          'password_hash': password,
        }),
      );

      final Map<String, dynamic> data = response.body.isNotEmpty
          ? jsonDecode(response.body) as Map<String, dynamic>
          : {};

      switch (response.statusCode) {
        case 200:
          return LoginResult(
            token: data['token']?.toString() ?? '',
            message:
                data['message']?.toString() ?? 'Login realizado com sucesso.',
          );

        case 401:
          throw LoginException(
            data['message']?.toString() ?? 'Senha incorreta.',
          );

        case 404:
        case 409:
        case 500:
          throw LoginException(
            data['message']?.toString() ??
                'Não foi possível realizar o login.',
          );

        default:
          throw LoginException('Erro inesperado: ${response.statusCode}.');
      }
    } on FormatException {
      throw LoginException('Resposta inválida da API.');
    } catch (_) {
      throw LoginException(
        'Erro de conexão ao tentar acessar a API.',
      );
    }
  }
}
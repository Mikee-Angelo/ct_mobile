import 'dart:convert';
import 'dart:io';
import 'package:scanner/features/auth/data/models/login_model.dart';
import 'package:scanner/settings/settings.dart';
import 'package:http/http.dart' as http;

class LoginProvider {
  Settings settings = Settings();

  Future<LoginModel?> init({
    required String phone,
    required String password,
  }) async {
    String url = settings.url + 'login';

    return await http.post(
      Uri.parse(url),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        HttpHeaders.acceptHeader: 'application/json',
      },
      body: {
        'phone': phone,
        'password': password,
      },
    ).then((v) => null);
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scanner/pages/login/model/UserModel.dart';
import 'package:scanner/settings/settings.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  Settings settings = Settings();

  Future<UserModel?> init({required String token}) async {
    String url = settings.url + 'auth/me';

    return await http.post(Uri.parse(url), headers: {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    }).then((value) => null);
  }
}

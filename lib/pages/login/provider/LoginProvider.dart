import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scanner/settings/settings.dart';
import 'package:scanner/pages/login/model/LoginModel.dart';
import 'package:http/http.dart' as http;

class LoginProvider {
  Settings settings = Settings();

  Future<LoginModel> init({
    @required String phone,
    @required String password,
  }) async {
    String url = settings.url + 'login';

    return await http.post(
      url,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        HttpHeaders.acceptHeader: 'application/json',
      },
      body: {
        'phone': phone,
        'password': password,
      },
    ).then(
      (value) => LoginModel.fromJson(json.decode(value.body)),
    );
  }
}

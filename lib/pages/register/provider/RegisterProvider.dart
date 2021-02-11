import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scanner/pages/register/model/RegisterModel.dart';
import 'package:scanner/settings/settings.dart';
import 'package:http/http.dart' as http;

class RegisterProvider {
  Settings settings = Settings();

  Future<RegisterModel> init({
    @required String firstName,
    @required String lastName,
    @required String address,
    @required String phone,
    @required String password,
  }) async {
    String url = settings.url + 'register';

    return await http.post(
      url,
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
      },
      body: {
        'first_name': firstName,
        'last_name': lastName,
        'address': address,
        'phone': phone,
        'password': password,
      },
    ).then((value) => RegisterModel.fromJson(json.decode(value.body)));
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:scanner/pages/logs/model/AllLogsModel.dart';
import 'package:scanner/pages/logs/model/LatestLogsModel.dart';
import 'package:scanner/pages/logs/model/LogsModel.dart';
import 'package:scanner/settings/settings.dart';
import 'package:http/http.dart' as http;

class LogsProvider {
  Settings settings = Settings();

  Future<LogsModel?> init({
    required String token,
    required String uuid,
  }) async {
    String url = settings.url + 'logs/create';

    return await http.post(Uri.parse(url), headers: {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    }, body: {
      'places_id': uuid,
    }).then((value) => null);
  }

  Future<AllLogsModel?> all({required String token}) async {
    String url = settings.url + 'logs';

    return await http.post(Uri.parse(url), headers: {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    }).then((value) => null);
  }

  Future<LatestLogsModel?
  > latest({required String token}) async {
    String url = settings.url + 'logs/latest';

    return await http.post(Uri.parse(url), headers: {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    }).then((value) => null);
  }
}

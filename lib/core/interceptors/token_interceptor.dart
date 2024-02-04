// ignore_for_file: empty_catches

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/core/errors/exception.dart';
import 'package:scanner/core/services/storage_service.dart';
import 'package:scanner/features/auth/data/data.dart';

class TokenInterception extends Interceptor {
  const TokenInterception(this._service);

  final StorageService _service;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    try {
      final storage = _service.getStringValue('token');
      final lm = LoginModel.fromJson(jsonDecode(storage));

      if (!lm.token.isEmptyOrNull) {
        options.headers.addAll({
          HttpHeaders.authorizationHeader: 'Bearer ${lm.token}',
        });
      }
    } on StorageException {}

    handler.next(options);
  }
}

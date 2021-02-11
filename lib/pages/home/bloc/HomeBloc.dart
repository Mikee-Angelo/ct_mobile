import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:scanner/pages/login/model/UserModel.dart';

import '../../../bloc.dart';

class HomeBloc implements Bloc {
  final storage = new FlutterSecureStorage();

  qrScanner({@required BuildContext context}) async {
    // final result = await BarcodeScanner.scan();
    Navigator.pushNamed(context, '/qr');
  }

  Future<void> getProfile() async {
    String value = await storage.read(key: 'user');
    var datas = json.decode(value);

    return datas;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}

final home = HomeBloc();

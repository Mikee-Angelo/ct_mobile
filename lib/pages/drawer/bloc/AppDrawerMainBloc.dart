import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:scanner/bloc.dart';
import 'package:scanner/pages/loading/Loading.dart';
import 'package:scanner/pages/login/Login.dart';

class AppDrawerMainBloc implements Bloc {
  logout({required BuildContext context}) async {
    final storage = new FlutterSecureStorage();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
    await storage.deleteAll();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}

final appdrawer = AppDrawerMainBloc();

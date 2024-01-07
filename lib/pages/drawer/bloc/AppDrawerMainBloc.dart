import 'package:flutter/material.dart';
import 'package:scanner/bloc.dart';
import 'package:scanner/features/auth/presentation/pages/login_page.dart';

class AppDrawerMainBloc implements Bloc {
  logout({required BuildContext context}) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
    // await storage.deleteAll();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}

final appdrawer = AppDrawerMainBloc();

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/core/themes/sizing.dart';
import 'package:scanner/pages/about/About.dart';
import 'package:scanner/pages/home/Home.dart';
import 'package:scanner/pages/loading/Loading.dart';
import 'package:scanner/pages/login/Login.dart';
import 'package:scanner/pages/logs/Logs.dart';
import 'package:scanner/pages/privacy/Privacy.dart';
import 'package:scanner/pages/qr/Qr.dart';
import 'package:scanner/pages/register/Register.dart';
import 'package:scanner/pages/tips/Tips.dart';

class App extends StatelessWidget {
  Future<Widget> setInitialRoute() async {
    final storage = new FlutterSecureStorage();
    final String? value = await storage.read(key: 'token');

    if (value != null) {
      return Home();
    } else {
      return Login();
    }
  }

  @override
  Widget build(BuildContext context) {
    setInitialRoute();
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Open Sans',
        primaryColor: Branding.primaryColor,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: Branding.hintTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: Sizing.inputBorder,
            borderSide: BorderSide(
              color: Branding.borderColor,
            ),
          ),
        ),
      ),
      home: FutureBuilder(
        future: setInitialRoute(),
        builder: (context, snapshot) {

          //Note: This will be resolved on next pull request
          return SizedBox.shrink();
          // if (snapshot.data == null) {
          //   return Loading();
          // }

          // return snapshot.data;
        },
      ),
      routes: {
        '/register': (c) => Register(),
        '/home': (c) => Home(),
        '/logs': (c) => Logs(),
        '/privacy': (c) => Privacy(),
        '/about': (c) => About(),
        '/tips': (c) => Tips(),
        '/qr': (c) => Qr(),
        '/loading': (c) => Loading(),
      },
    );
  }
}

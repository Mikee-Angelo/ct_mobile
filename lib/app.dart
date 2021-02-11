import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scanner/pages/Tips/Tips.dart';
import 'package:scanner/pages/about/About.dart';
import 'package:scanner/pages/home/Home.dart';
import 'package:scanner/pages/loading/Loading.dart';
import 'package:scanner/pages/login/Login.dart';
import 'package:scanner/pages/logs/Logs.dart';
import 'package:scanner/pages/privacy/Privacy.dart';
import 'package:scanner/pages/qr/Qr.dart';
import 'package:scanner/pages/register/Register.dart';

class App extends StatelessWidget {
  Future<Widget> setInitialRoute() async {
    final storage = new FlutterSecureStorage();
    String value = await storage.read(key: 'token');

    if (value != null) {
      return Home();
    } else {
      return Login();
    }
  }

  @override
  Widget build(BuildContext context) {
    setInitialRoute();
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Open Sans',
        primaryColor: Hexcolor('#00C853'),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Hexcolor('#212121'),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: Hexcolor('#707070'),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7.0),
            ),
            borderSide: BorderSide(
              color: Hexcolor('#707070'),
            ),
          ),
        ),
      ),
      home: FutureBuilder(
        future: setInitialRoute(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Loading();
          }

          return snapshot.data;
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

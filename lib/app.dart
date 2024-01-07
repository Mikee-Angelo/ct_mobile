import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/core/themes/sizing.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/auth/presentation/pages/login_page.dart';
import 'package:scanner/features/auth/presentation/pages/register_page.dart';
import 'package:scanner/injection.dart';
import 'package:scanner/pages/about/About.dart';
import 'package:scanner/pages/home/Home.dart';
import 'package:scanner/pages/loading/Loading.dart';
import 'package:scanner/pages/logs/Logs.dart';
import 'package:scanner/pages/privacy/Privacy.dart';
import 'package:scanner/pages/qr/Qr.dart';
import 'package:scanner/pages/tips/Tips.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl.get<AuthBloc>()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Open Sans',
          primaryColor: Branding.primaryColor,
          appBarTheme: const AppBarTheme(scrolledUnderElevation: 0),
          inputDecorationTheme: const InputDecorationTheme(
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
        home: const LoginPage(),
        routes: {
          '/register': (c) => const RegisterPage(),
          '/home': (c) => Home(),
          '/logs': (c) => Logs(),
          '/privacy': (c) => Privacy(),
          '/about': (c) => About(),
          '/tips': (c) => Tips(),
          '/qr': (c) => Qr(),
          '/loading': (c) => Loading(),
        },
        builder: EasyLoading.init(),
      ),
    );
  }
}

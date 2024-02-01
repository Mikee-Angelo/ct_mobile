import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/core/themes/sizing.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/route/presentation/bloc/route_bloc.dart';
import 'package:scanner/features/route/presentation/pages/root_page.dart';
import 'package:scanner/injection.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl.get<AuthBloc>()),
        BlocProvider(create: (_) => sl.get<RouteBloc>()),
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
        home: const RootPage(),
        builder: EasyLoading.init(),
      ),
    );
  }
}

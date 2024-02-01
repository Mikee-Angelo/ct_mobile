import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/app.dart';
import 'package:scanner/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();
  await init();
  runApp(const App());
}

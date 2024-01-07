import 'package:flutter/material.dart';
import 'package:scanner/app.dart';
import 'package:scanner/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  init();
  runApp(const App());
}

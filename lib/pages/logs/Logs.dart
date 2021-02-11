import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scanner/pages/logs/screens/LogsMobile.dart';

class Logs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenTypeLayout(
      mobile: LogsMobile(),
    );
  }
}

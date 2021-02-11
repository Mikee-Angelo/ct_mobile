import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scanner/pages/tips/screens/TipsMobile.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenTypeLayout(
      mobile: TipsMobile(),
    );
  }
}

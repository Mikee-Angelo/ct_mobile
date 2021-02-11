import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scanner/pages/qr/screens/QrMobile.dart';

class Qr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenTypeLayout(
      mobile: QrMobile(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scanner/pages/register/screens/RegisterMobile.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenTypeLayout(
      mobile: RegisterMobile(),
    );
  }
}

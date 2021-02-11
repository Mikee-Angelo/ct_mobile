import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scanner/pages/drawer/screens/AppDrawerMobile.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scanner/pages/home/screens/HomeMobile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenTypeLayout(
      mobile: HomeMobile(),
    );
  }
}

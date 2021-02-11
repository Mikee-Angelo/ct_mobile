import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

class LoadingMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoadingMobileState();
  }
}

class LoadingMobileState extends State<LoadingMobile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Text(
          'Loading ....',
          style: TextStyle(
            fontSize: ScreenUtil.getInstance().getSp(12),
          ),
        ),
      ),
    );
  }
}

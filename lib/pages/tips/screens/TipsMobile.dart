import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/pages/appbar/AppBarMain.dart';
import 'package:scanner/pages/drawer/screens/app_drawer_widget.dart';

class TipsMobile extends StatefulWidget {
  const TipsMobile({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TipsMobileState();
  }
}

class TipsMobileState extends State<TipsMobile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBarMain(
        context: context,
      ),
      drawer: const AppDrawerWidget(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil.getInstance().getWidth(30),
          vertical: ScreenUtil.getInstance().getHeight(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Safety Tips',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil.getInstance().getSp(22),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().getHeight(20),
            ),
            Text(
              '         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus. Quisque scelerisque velit id ligula hendrerit, eu tempor diam placerat. Ut quis arcu eu nisl dictum venenatis. Vestibulum at mattis ex, quis dignissim tortor.',
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().getSp(12),
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().getHeight(40),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/washing-hands.png'),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(15),
                  ),
                  Text(
                    'Wash your hands regularly',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().getWidth(15),
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(12),
                        color: Branding.hintTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().getHeight(40),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/social-distancing.png'),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(15),
                  ),
                  Text(
                    'Social Distancing',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().getWidth(15),
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(12),
                        color: Branding.hintTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().getHeight(40),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/img/face-mask.png'),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(15),
                  ),
                  Text(
                    'Always wear your mask',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(10),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil.getInstance().getWidth(15),
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(12),
                        color: Branding.hintTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

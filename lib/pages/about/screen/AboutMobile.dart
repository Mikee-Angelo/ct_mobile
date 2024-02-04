import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/pages/appbar/AppBarMain.dart';
import 'package:scanner/pages/drawer/screens/app_drawer_widget.dart';

class AboutMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutMobileState();
  }
}

class AboutMobileState extends State<AboutMobile> {
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
              'About Us',
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
                  Image.asset('assets/img/personA.png'),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(15),
                  ),
                  Text(
                    'Abner Cimafranca',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Founder',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(12),
                      color: Theme.of(context).primaryColor,
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
                        color: Branding.textColor,
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
                  Image.asset('assets/img/personB.png'),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(15),
                  ),
                  Text(
                    'Michael Angelo De Leon',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Full-Stack Developer',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(12),
                      color: Theme.of(context).primaryColor,
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
                          color: Branding.textColor),
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
                  Image.asset('assets/img/personC.png'),
                  SizedBox(
                    height: ScreenUtil.getInstance().getHeight(15),
                  ),
                  Text(
                    'Alexavier Cimafranca',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Designer',
                    style: TextStyle(
                      fontSize: ScreenUtil.getInstance().getSp(12),
                      color: Theme.of(context).primaryColor,
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
                        color: Branding.textColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

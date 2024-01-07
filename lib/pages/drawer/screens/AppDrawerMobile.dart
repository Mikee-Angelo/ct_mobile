import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scanner/pages/drawer/bloc/AppDrawerMainBloc.dart';
import 'package:scanner/pages/home/bloc/HomeBloc.dart';

class AppDrawerMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DrawerMobileState();
  }
}

class DrawerMobileState extends State<AppDrawerMobile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: FutureBuilder(
        future: home.getProfile(),
        builder: (context, snapshot) {

          //Note: This will be removed on next pull request
          return SizedBox.shrink();
          // return Column(
          //   children: [
          //     Expanded(
          //       child: ListView(
          //         // Important: Remove any padding from the ListView.
          //         padding: EdgeInsets.zero,
          //         children: <Widget>[
          //           SizedBox(
          //             height: ScreenUtil.getScreenW(context) / 1.5,
          //             child: DrawerHeader(
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Image.asset('assets/img/avatar.png'),
          //                   SizedBox(
          //                     height: ScreenUtil.getInstance().getHeight(20),
          //                   ),
          //                   Text(
          //                     snapshot.data != null
          //                         ? snapshot.data['full_name']
          //                         : '',
          //                     style: TextStyle(
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: ScreenUtil.getInstance().getSp(20),
          //                     ),
          //                   ),
          //                   Text(
          //                     snapshot.data != null
          //                         ? snapshot.data['phone']
          //                         : '',
          //                     style: TextStyle(
          //                       fontSize: ScreenUtil.getInstance().getSp(12),
          //                     ),
          //                   ),
          //                   Text(
          //                     snapshot.data != null
          //                         ? snapshot.data['address']
          //                         : '',
          //                     style: TextStyle(
          //                       fontSize: ScreenUtil.getInstance().getSp(12),
          //                       color: Hexcolor('#707070'),
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //           ListTile(
          //             title: Padding(
          //               padding: EdgeInsets.only(
          //                 left: ScreenUtil.getInstance().getWidth(10),
          //               ),
          //               child: Text(
          //                 'Home',
          //                 style: TextStyle(
          //                   fontSize: ScreenUtil.getInstance().getSp(15),
          //                   color: Theme.of(context).primaryColor,
          //                 ),
          //               ),
          //             ),
          //             onTap: () =>
          //                 Navigator.pushReplacementNamed(context, '/home'),
          //           ),
          //           ListTile(
          //             title: Padding(
          //               padding: EdgeInsets.only(
          //                 left: ScreenUtil.getInstance().getWidth(10),
          //               ),
          //               child: Text(
          //                 'Logs',
          //                 style: TextStyle(
          //                   fontSize: ScreenUtil.getInstance().getSp(15),
          //                   color: Theme.of(context).primaryColor,
          //                 ),
          //               ),
          //             ),
          //             onTap: () =>
          //                 Navigator.pushReplacementNamed(context, '/logs'),
          //           ),
          //           ListTile(
          //             title: Padding(
          //               padding: EdgeInsets.only(
          //                 left: ScreenUtil.getInstance().getWidth(10),
          //               ),
          //               child: Text(
          //                 'Safety Tips',
          //                 style: TextStyle(
          //                   fontSize: ScreenUtil.getInstance().getSp(15),
          //                   color: Theme.of(context).primaryColor,
          //                 ),
          //               ),
          //             ),
          //             onTap: () =>
          //                 Navigator.pushReplacementNamed(context, '/tips'),
          //           ),
          //           ListTile(
          //             title: Padding(
          //               padding: EdgeInsets.only(
          //                 left: ScreenUtil.getInstance().getWidth(10),
          //               ),
          //               child: Text(
          //                 'Privacy Policy',
          //                 style: TextStyle(
          //                   fontSize: ScreenUtil.getInstance().getSp(15),
          //                   color: Theme.of(context).primaryColor,
          //                 ),
          //               ),
          //             ),
          //             onTap: () =>
          //                 Navigator.pushReplacementNamed(context, '/privacy'),
          //           ),
          //           ListTile(
          //             title: Padding(
          //               padding: EdgeInsets.only(
          //                 left: ScreenUtil.getInstance().getWidth(10),
          //               ),
          //               child: Text(
          //                 'Abous Us',
          //                 style: TextStyle(
          //                   fontSize: ScreenUtil.getInstance().getSp(15),
          //                   color: Theme.of(context).primaryColor,
          //                 ),
          //               ),
          //             ),
          //             onTap: () =>
          //                 Navigator.pushReplacementNamed(context, '/about'),
          //           ),
          //         ],
          //       ),
          //     ),
          //     MaterialButton(
          //       onPressed: () => appdrawer.logout(context: context),
          //       minWidth: double.infinity,
          //       color: Theme.of(context).primaryColor,
          //       height: ScreenUtil.getInstance().getHeight(43),
          //       elevation: 0.0,
          //       child: Text(
          //         'Logout',
          //         style: TextStyle(
          //           fontSize: ScreenUtil.getInstance().getSp(15),
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ],
          // );
        },
      ),
    );
  }
}

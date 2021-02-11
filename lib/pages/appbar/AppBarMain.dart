import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:scanner/pages/home/bloc/HomeBloc.dart';

class AppBarMain extends AppBar {
  AppBarMain({
    Key key,
    BuildContext context,
  }) : super(
          key: key,
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: ScreenUtil.getInstance().getWidth(20),
                  ),
                  child: FutureBuilder(
                    future: home.getProfile(),
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return Container();
                      }

                      return Text(
                        'Hello, ${snapshot.data["first_name"]}',
                        style: TextStyle(
                          fontSize: ScreenUtil.getInstance().getSp(17),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        );
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   return AppBar(
  //     backgroundColor: Colors.white,
  //     elevation: 0.0,
  //     iconTheme: IconThemeData(
  //       color: Theme.of(context).primaryColor,
  //     ),
  //     actions: [
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Padding(
  //             padding: EdgeInsets.only(
  //               right: ScreenUtil.getInstance().getWidth(20),
  //             ),
  //             child: Text(
  //               'Hello, John',
  //               style: TextStyle(
  //                 fontSize: ScreenUtil.getInstance().getSp(17),
  //               ),
  //             ),
  //           ),
  //         ],
  //       )
  //     ],
  //   );
  // }
}

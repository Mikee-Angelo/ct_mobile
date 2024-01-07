import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:scanner/pages/home/bloc/HomeBloc.dart';

class AppBarMain extends AppBar {
  AppBarMain({
    Key? key,
    required BuildContext context,
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

                      //Note: This will be removed on next pull request
                      return SizedBox.shrink();

                      // return Text(
                      //   'Hello, ${snapshot.data["first_name"]}',
                      //   style: TextStyle(
                      //     fontSize: ScreenUtil.getInstance().getSp(17),
                      //   ),
                      // );
                    },
                  ),
                ),
              ],
            )
          ],
        );
}

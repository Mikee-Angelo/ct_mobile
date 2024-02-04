import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/pages/drawer/bloc/AppDrawerMainBloc.dart';
import 'package:scanner/pages/home/bloc/HomeBloc.dart';

class AppDrawerWidget extends StatefulWidget {
  const AppDrawerWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return DrawerMobileState();
  }
}

class DrawerMobileState extends State<AppDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: FutureBuilder(
        future: home.getProfile(),
        builder: (context, snapshot) {
          //Note: This will be removed on next pull request
          return Column(
            children: [
              Expanded(
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil.getScreenW(context) / 1.5,
                      child: DrawerHeader(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/img/avatar.png'),
                            SizedBox(
                              height: ScreenUtil.getInstance().getHeight(20),
                            ),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil.getInstance().getSp(20),
                              ),
                            ),
                            Text(
                              '09123123123',
                              style: TextStyle(
                                fontSize: ScreenUtil.getInstance().getSp(12),
                              ),
                            ),
                            Text(
                              '13A 9th St. West Tapinac Olongapo City',
                              style: TextStyle(
                                fontSize: ScreenUtil.getInstance().getSp(12),
                                // color: Hexcolor('#707070'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().getWidth(10),
                        ),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: ScreenUtil.getInstance().getSp(15),
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/home'),
                    ),
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().getWidth(10),
                        ),
                        child: Text(
                          'Logs',
                          style: TextStyle(
                            fontSize: ScreenUtil.getInstance().getSp(15),
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/logs'),
                    ),
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().getWidth(10),
                        ),
                        child: Text(
                          'Safety Tips',
                          style: TextStyle(
                            fontSize: ScreenUtil.getInstance().getSp(15),
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/tips'),
                    ),
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().getWidth(10),
                        ),
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            fontSize: ScreenUtil.getInstance().getSp(15),
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/privacy'),
                    ),
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().getWidth(10),
                        ),
                        child: Text(
                          'Abous Us',
                          style: TextStyle(
                            fontSize: ScreenUtil.getInstance().getSp(15),
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/about'),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: _onLogout,
                minWidth: double.infinity,
                color: Theme.of(context).primaryColor,
                height: ScreenUtil.getInstance().getHeight(43),
                elevation: 0.0,
                child: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: ScreenUtil.getInstance().getSp(15),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _onLogout() {
    BlocProvider.of<AuthBloc>(context).add(OnLogout());
  }
}

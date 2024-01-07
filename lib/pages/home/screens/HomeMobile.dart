import 'package:badges/badges.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:scanner/pages/appbar/AppBarMain.dart';
import 'package:scanner/pages/drawer/AppDrawer.dart';
import 'package:scanner/pages/home/bloc/HomeBloc.dart';
import 'package:scanner/pages/logs/bloc/LogsBloc.dart';
import 'package:scanner/settings/settings.dart';
import 'package:scanner/widgets/CustomBadge.dart';
import 'package:scanner/widgets/UserIcon.dart';

class HomeMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeMobileState();
  }
}

class HomeMobileState extends State<HomeMobile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    logs.getLatestLogs();
  }

  @override
  Widget build(BuildContext context) {
    Settings settings = Settings();
    String image = settings.qr + 'qr/';
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarMain(context: context),
        drawer: AppDrawer(),
        body: FutureBuilder(
          future: home.getProfile(),
          builder: (context, snapshot) {
            
            // Note: This will be removed on next pull request
            return SizedBox.shrink();
            // if (snapshot.data == null) {
            //   return Container(
            //     alignment: Alignment.center,
            //     width: double.infinity,
            //     height: double.infinity,
            //     child: Container(
            //       child: CircularProgressIndicator(),
            //     ),
            //   );
            // }

            // return Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: ScreenUtil.getInstance().getWidth(30),
            //   ),
            //   child: Column(
            //     children: [
            //       Expanded(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               height: ScreenUtil.getInstance().getHeight(200),
            //               width: double.infinity,
            //               child: SvgPicture.network(
            //                 image + snapshot.data['qr'],
            //               ),
            //             ),
            //             SizedBox(
            //               height: ScreenUtil.getInstance().getHeight(20),
            //             ),
            //             Container(
            //               padding: EdgeInsets.symmetric(
            //                 horizontal: ScreenUtil.getInstance().getWidth(70),
            //               ),
            //               child: Text(
            //                 'SCAN THIS CODE FOR CONTACT TRACING',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   color: Hexcolor('#707070'),
            //                 ),
            //                 textAlign: TextAlign.center,
            //               ),
            //             ),
            //             SizedBox(
            //               height: ScreenUtil.getInstance().getHeight(35),
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               crossAxisAlignment: CrossAxisAlignment.end,
            //               children: [
            //                 Text(
            //                   'Status',
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: ScreenUtil.getInstance().getSp(17),
            //                   ),
            //                 ),
            //                 Text(
            //                   'Warning',
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: ScreenUtil.getInstance().getSp(14),
            //                     color: Hexcolor('#FF9800'),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Possible contect with infected person  ',
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: ScreenUtil.getInstance().getSp(11),
            //                     color: Hexcolor('#FF9800'),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: ScreenUtil.getInstance().getHeight(15),
            //             ),
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               crossAxisAlignment: CrossAxisAlignment.end,
            //               children: [
            //                 Text(
            //                   'Latest Place',
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: ScreenUtil.getInstance().getSp(17),
            //                   ),
            //                 ),
            //                 GestureDetector(
            //                   onTap: () =>
            //                       Navigator.pushNamed(context, '/logs'),
            //                   child: Text(
            //                     'See all logs',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: ScreenUtil.getInstance().getSp(11),
            //                       color: Theme.of(context).primaryColor,
            //                       decoration: TextDecoration.underline,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: ScreenUtil.getInstance().getHeight(15),
            //             ),
            //             StreamBuilder(
            //               stream: logs.logsLatest.stream,
            //               builder: (context, snapshot) {
            //                 if (snapshot.data == null) {
            //                   return Text(
            //                     'Loading ...',
            //                     style: TextStyle(
            //                       fontSize: ScreenUtil.getInstance().getSp(12),
            //                     ),
            //                   );
            //                 }

            //                 return Card(
            //                   elevation: 3.0,
            //                   child: Container(
            //                     padding: EdgeInsets.symmetric(
            //                       horizontal:
            //                           ScreenUtil.getInstance().getWidth(15),
            //                       vertical:
            //                           ScreenUtil.getInstance().getHeight(10),
            //                     ),
            //                     width: double.infinity,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Expanded(
            //                           child: Column(
            //                             crossAxisAlignment:
            //                                 CrossAxisAlignment.start,
            //                             children: [
            //                               Text(
            //                                 snapshot.data.fullName,
            //                                 style: TextStyle(
            //                                   fontWeight: FontWeight.bold,
            //                                   fontSize: ScreenUtil.getInstance()
            //                                       .getSp(15),
            //                                 ),
            //                               ),
            //                               Text(
            //                                 snapshot.data.address,
            //                                 style: TextStyle(
            //                                   color: Hexcolor('#707070'),
            //                                   fontSize: ScreenUtil.getInstance()
            //                                       .getSp(11),
            //                                 ),
            //                               ),
            //                               SizedBox(
            //                                 height: ScreenUtil.getInstance()
            //                                     .getHeight(9),
            //                               ),
            //                               Text(
            //                                 DateFormat.yMMMMd().add_jm().format(
            //                                       DateTime.parse(snapshot
            //                                               .data.createdAt)
            //                                           .toLocal(),
            //                                     ),
            //                                 style: TextStyle(
            //                                   color: Hexcolor('#707070'),
            //                                   fontSize: ScreenUtil.getInstance()
            //                                       .getSp(10),
            //                                 ),
            //                               ),
            //                               Text(
            //                                 DateFormat.EEEE().format(
            //                                   DateTime.parse(
            //                                           snapshot.data.createdAt)
            //                                       .toLocal(),
            //                                 ),
            //                                 style: TextStyle(
            //                                   color: Hexcolor('#707070'),
            //                                   fontSize: ScreenUtil.getInstance()
            //                                       .getSp(10),
            //                                 ),
            //                               ),
            //                             ],
            //                           ),
            //                         ),
            //                         Column(
            //                           children: [
            //                             customBadge.newBadge(
            //                               date: DateTime.parse(
            //                                       snapshot.data.createdAt)
            //                                   .toLocal(),
            //                             ),
            //                             userIcon.init(
            //                               context: context,
            //                               user: snapshot.data.usersProfilesId,
            //                             ),
            //                           ],
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 );
            //               },
            //             ),
            //             SizedBox(
            //               height: ScreenUtil.getInstance().getHeight(15),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(
            //           bottom: ScreenUtil.getInstance().getHeight(10),
            //         ),
            //         child: MaterialButton(
            //           onPressed: () => home.qrScanner(context: context),
            //           minWidth: double.infinity,
            //           color: Theme.of(context).primaryColor,
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(10.0),
            //           ),
            //           height: ScreenUtil.getInstance().getHeight(43),
            //           elevation: 0.0,
            //           child: Text(
            //             'Scan QR Code',
            //             style: TextStyle(
            //               fontSize: ScreenUtil.getInstance().getSp(15),
            //               color: Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // );
          },
        ),
      ),
    );
  }
}

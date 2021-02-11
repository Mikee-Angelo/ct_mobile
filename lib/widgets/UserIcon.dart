import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserIcon {
  Widget init({@required BuildContext context, @required int user}) {
    List icons = [
      FontAwesomeIcons.userAlt,
      FontAwesomeIcons.building,
      FontAwesomeIcons.car,
    ];

    IconData i;

    if (user != null) {
      i = icons[0];
    }

    return Container(
      child: FaIcon(
        i,
        size: ScreenUtil.getInstance().getSp(12),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

final userIcon = UserIcon();

import 'package:badges/badges.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

class CustomBadge {
  Widget newBadge({@required DateTime date}) {
    DateTime now = DateTime.now();

    int diff = now.difference(date).inMinutes;

    if (diff != 0) {
      return Container();
    }

    return Column(
      children: [
        Badge(
          badgeContent: Text(
            'New',
            style: TextStyle(
              fontSize: ScreenUtil.getInstance().getSp(12),
              color: Colors.white,
            ),
          ),
          shape: BadgeShape.square,
          borderRadius: 20,
          toAnimate: false,
        ),
        SizedBox(
          height: ScreenUtil.getInstance().getHeight(8),
        ),
      ],
    );
  }
}

final customBadge = CustomBadge();

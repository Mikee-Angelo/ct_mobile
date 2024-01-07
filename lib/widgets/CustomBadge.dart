import 'package:badges/badges.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart' hide Badge;

class CustomBadge {
  Widget newBadge({required DateTime date}) {
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
        ),
        SizedBox(
          height: ScreenUtil.getInstance().getHeight(8),
        ),
      ],
    );
  }
}

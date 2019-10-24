import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import '../core/util.dart';

Widget appBar(BuildContext context, String title, Color colorMain, Color colorThree) {
  return PreferredSize(
    preferredSize: Size.fromHeight(70.0),
    child: GradientAppBar(
      title: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
              style: CustomTextStyles.AppBarHeader,
            ),
          ],
        ),
      ),
      elevation: 0,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [colorMain, colorThree],
      ),
    ),
  );
}


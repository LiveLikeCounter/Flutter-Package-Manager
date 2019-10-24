import 'package:flutter/material.dart';

class CustomThemes 
{
  // static const WhiteTheme = Theme.of(context).copyWith(canvasColor: Colors.white);
}

class CustomColors 
{
  static const Color BodyBackground = Color.fromRGBO(240, 248, 252, 1);
  static const Color GreyBorder = Color.fromRGBO(207, 207, 207, 1);

  static const Color YellowStar = Color.fromRGBO(225, 220, 0, 1);
  static const Color YellowBell = Color.fromRGBO(225, 220, 0, 1);

  /// Container indication colors:
  static const Color OrangeAccent = Color.fromRGBO(231, 148, 3, 1);
  static const Color GreenAccent = Color.fromRGBO(30, 209, 2, 1);
  static const Color YellowAccent = Color.fromRGBO(249, 194, 41, 1);

  static const Color ActiveIndication = Color.fromRGBO(0, 0, 0, 0.45);
  static const Color InactiveIndication = Colors.transparent;
  
  static const Color Header = Color.fromRGBO(0, 0, 0, .54);
  static const Color TextBody = Color.fromRGBO(130, 160, 183, 1);
  static const Color TextGrey = Color.fromRGBO(198, 198, 200, 1);

  static const Color Grey = Color.fromRGBO(70, 70, 70, 1);

  static const Color Purple = Color.fromRGBO(194, 24, 91, 1);

  static const Color Red = Color.fromRGBO(189, 66, 79, 1);
  static const Color Red2 = Color.fromRGBO(219, 78, 101, 1);
  static const Color Red3 = Color.fromRGBO(233, 100, 132, 1);
  
  static const Color Blue = Color.fromRGBO(12, 77, 114, 1);
  static const Color Blue2 = Color.fromRGBO(25, 112, 162, 1);
  static const Color Blue3 = Color.fromRGBO(40, 144, 205, 1);

  static const Color Yellow = Color.fromRGBO(248, 121, 7, 1);
  static const Color Yellow2 = Color.fromRGBO(249, 146, 16, 1);
  static const Color Yellow3 = Color.fromRGBO(231, 148, 3, 1);

  static const Color Green = Color.fromRGBO(57, 167, 82, 1);
  static const Color Green2 = Color.fromRGBO(66, 192, 119, 1);
  static const Color Green3 = Color.fromRGBO(71, 219, 161, 1);
}

class CustomTextStyles 
{
  static const TextStyle Header = TextStyle(fontSize: 16, color: CustomColors.Header);

  static const TextStyle AppBarHeader = TextStyle(fontSize: 30, fontWeight: FontWeight.w300, color: Colors.white);

  static const TextStyle AppDrawerTiles = TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.black);

  static const TextStyle ListTitleText = TextStyle(fontSize: 12, color: CustomColors.TextGrey);
  static const TextStyle ListSubTitleText = TextStyle(fontSize: 12, color: CustomColors.TextGrey);
  static const TextStyle ListContainerText = TextStyle(fontSize: 18, color: CustomColors.TextBody);
  static const TextStyle ListContainerNumber = TextStyle(fontSize: 60, color: CustomColors.TextBody);

  static const TextStyle CardGroupTitel = TextStyle(color: Colors.white, fontSize: 30);
  static const TextStyle CardGroupInfo = TextStyle(color: Colors.white, fontSize: 40);
  static const TextStyle CardGroupInfoSubscription = TextStyle(color: Colors.white, fontSize: 12);
}



import 'package:flutter/material.dart';

class AppColor {
  static const Color headerColor = Color.fromRGBO(0, 0, 0, 1);
  static const Color timeTextFieldFill = Color.fromRGBO(248, 248, 248, 1);
  static const Color focusedTextFieldBorderColor =
      Color.fromRGBO(75, 48, 162, 1);

  static const Color bottomButtonActiveColor = Color.fromRGBO(106, 81, 183, 1);
  static const Color bottomButtonPressedColor = Color.fromRGBO(75, 48, 162, 1);
  static const Color bottomButtonHoverColor = Color.fromRGBO(146, 124, 212, 1);
  static const Color bottomButtonInactiveColor = Color.fromRGBO(185, 185, 185, 1);

 static const Color regularButtonForegroundActiveColor = Color.fromRGBO(106, 81, 183, 1);
  static const Color regularButtonForegroundPressedColor = Color.fromRGBO(75, 48, 162, 1);
  static const Color regularButtonForegroundHoverColor = Color.fromRGBO(146, 124, 212, 1);
  static const Color regularButtonForegroundInactiveColor = Color.fromRGBO(185, 185, 185, 1);

  static const Color regularButtonBackgroundActiveColor = Colors.white10;
  static const Color regularButtonBackgroundPressedColor = Colors.white;
  static   Color regularButtonBackgroundHoverColor = Colors.white.withOpacity(0.7);
  static   Color regularButtonBackgroundInactiveColor = Colors.white.withOpacity(0.3);

  static const Color notificationCardBorderColor =
      Color.fromRGBO(106, 77, 186, 1);
}

class AppFont {
  static const heavy = "FuturaPT-Heavy";
}

class AppTextStyle {
  static TextStyle loginTitle = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(26, 23, 23, 1));

  static TextStyle body1Regular = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(116, 115, 119, 1));

  static TextStyle currentTime = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(26, 23, 23, 1));

  static const TextStyle inputTime = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 1.5,
      color: Colors.black);

  static const TextStyle button =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white);

  static const TextStyle notificationCardTitles =
  TextStyle(fontSize: 15, color: Colors.black);

  static const TextStyle notificationCardValues =
  TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black);
}

class AppValues {
  static double regularCornerRadius = 4;
  static const double textFieldHeight = 40;
  static const double bottomBarHeight = 70;
  static const double headerMarginTop = 30;
}

import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

void changeTheme(BuildContext context) {
  DynamicTheme.of(context).setBrightness(
      Theme.of(context).brightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark);
}

class AppColor {
  static const yellow = const Color.fromRGBO(249, 209, 4, 1);
  static const yellow75 = const Color.fromRGBO(249, 209, 4, .75);
  static const dark = const Color.fromRGBO(31, 28, 12, 1);
  static const light = const Color.fromRGBO(254, 252, 245, 1);
}

ThemeData buildTheme(Brightness brightness) {
  if (brightness == Brightness.dark) {
    return ThemeData.dark().copyWith(
      primaryColor: AppColor.yellow,
      primaryColorLight: AppColor.light,
      primaryColorDark: AppColor.dark,
      accentColor: AppColor.yellow,
      scaffoldBackgroundColor: AppColor.dark,
      backgroundColor: AppColor.dark,
      textTheme: TextTheme(
          title: TextStyle(
              fontFamily: 'quicksand',
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: AppColor.light),
          subtitle: TextStyle(
              fontFamily: 'quicksand',
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: AppColor.light),
          body1: TextStyle(
              fontFamily: 'quicksand',
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: AppColor.light),
          body2: TextStyle(
              fontFamily: 'quicksand',
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: AppColor.dark)),
    );
  } else {
    return ThemeData.light().copyWith(
      primaryColor: AppColor.yellow,
      primaryColorLight: AppColor.dark,
      primaryColorDark: AppColor.light,
      accentColor: AppColor.yellow,
      scaffoldBackgroundColor: AppColor.light,
      backgroundColor: AppColor.light,
      textTheme: TextTheme(
        title: TextStyle(
            fontFamily: 'quicksand',
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: AppColor.dark),
        subtitle: TextStyle(
            fontFamily: 'quicksand',
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: AppColor.dark),
        body1: TextStyle(
            fontFamily: 'quicksand',
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColor.dark),
        body2: TextStyle(
            fontFamily: 'quicksand',
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColor.light),
      ),
    );
  }
}

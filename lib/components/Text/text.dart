import 'package:flutter/material.dart';

class AppText extends Text {
  AppText(String data, {TextStyle style}) : super(data, style: style);

  AppText.body1(String data, BuildContext context)
      : super(data, style: Theme.of(context).textTheme.body1);

  AppText.body2(String data, BuildContext context)
      : super(data, style: Theme.of(context).textTheme.body2);

  AppText.title(String data, BuildContext context)
      : super(data, style: Theme.of(context).textTheme.title);

  AppText.subtitle(String data, BuildContext context)
      : super(data, style: Theme.of(context).textTheme.subtitle);
}

import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import './utils/theme.dart' as themeUtil;
import './views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => themeUtil.buildTheme(brightness),
        themedWidgetBuilder: (context, theme) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'The Secret App',
            theme: theme,
            home: MyHomePage()));
  }
}

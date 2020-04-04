import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import './utils/theme.dart' as CustomTheme;
import './views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.dark,
      data: (brightness) => CustomTheme.buildTheme(brightness),
      themedWidgetBuilder: (context, theme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme,
        home: MyHomePage()
      )
    );
  }
}

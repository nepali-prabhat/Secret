import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class CustomStyles {
  static void changeTheme(BuildContext context){
    DynamicTheme.of(context).setBrightness(Theme.of(context).brightness == Brightness.dark? Brightness.light: Brightness.dark);
  }
  static TextStyle headingStyle = TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                );
  static TextStyle subtitle= TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  );  
}
ThemeData buildTheme(Brightness brightness) {
    return brightness == Brightness.dark
        ? ThemeData.dark().copyWith(
            // primaryColor: Color.fromARGB(255, 255, 205, 1),
            // accentColor: Color.fromARGB(255, 255, 205, 1),
            textTheme: TextTheme(
                title: TextStyle(
                  fontFamily: 'quicksand',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
                subtitle: TextStyle(
                  fontFamily: 'quicksand',
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
                ),
                body1: TextStyle(
                  fontFamily: 'quicksand',
                  fontSize: 18,
                  color: Colors.white
                ),
              ),
            backgroundColor: Colors.black)
        : ThemeData.light().copyWith(
            primaryColor: Color.fromRGBO(255, 205, 1, 1),
            textTheme: TextTheme(
                title: TextStyle(
                  fontFamily: 'quicksand',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 28, 28, 28)
                ),
                subtitle: TextStyle(
                  fontFamily: 'quicksand',
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 28, 28, 28)
                ),
                body1: TextStyle(
                  fontFamily: 'quicksand',
                  fontSize: 18,
                  color: Color.fromARGB(255, 28, 28, 28)
                ),
              ),
            backgroundColor: Colors.white);
  }
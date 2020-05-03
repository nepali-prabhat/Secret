import 'package:flutter/material.dart';
import '../utils/theme.dart' as util_theme;
import '../components/index.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
            child: Chip(
                avatar: CircleAvatar(
                  child: AppText("C",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor)),
                ),
                backgroundColor: Theme.of(context).primaryColor,
                labelStyle: Theme.of(context).textTheme.body2,
                label: Text("Hello world"))),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          util_theme.changeTheme(context);
        },
        child: Text("Theme"),
      ),
    );
  }
}

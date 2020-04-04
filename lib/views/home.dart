import 'package:flutter/material.dart';
import '../utils/theme.dart' as customTheme;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: Column(
                    children: [
                      Text("Hello World! From next file. We are testing on a longer title heres", style: customTheme.CustomStyles.subtitle),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        child: Text("Something InterestingContainer"),
                      )
                    ]
            ),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          customTheme.CustomStyles.changeTheme(context);
        },
        child: Text("+"),
      ),
    );
  }
}
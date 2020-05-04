import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'Quicksand',
      ),
      home: MyHomePage(title: 'Secret'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var thisInstant = new DateTime.now();
  List<Map<int, String>> weekList = weakling();
  List<Map<int, String>> detailList = [
    { 0: 'Start the Secret flutter project', 1: 'Secret', 2: '2', 3: '90', 4: '0.60' },
    { 0: 'All the bright places', 1: 'Novel', 2: '6', 3: '70', 4: '0.70' },
    { 0: 'be a little smart', 1: 'dummy dumb neha', 2: '9', 3: '30', 4: '0.30' },
  ];
  final String customIcon1 = 'assets/images/icon1.svg';
  final String customIcon2 = 'assets/images/icon2.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:Column(
          children: [
            Container(
              height: 70,
              width: 360,
              margin: const EdgeInsets.fromLTRB(16, 12, 16, 24),
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),

              child: Row(
                children: [
                  new Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: weekList.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          height: 70,
                          width: 40,
                          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          decoration: BoxDecoration(
                            color: weekList[index][1] == thisInstant.day.toString() ? Color.fromRGBO(249, 209, 4, 0.25) : Color.fromRGBO(255, 255, 255, 0.0),
                            borderRadius: BorderRadius.circular(20.0),
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(weekList[index][0],
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontFamily: 'Quicksand',
                                    fontWeight: weekList[index][1] == thisInstant.day.toString() ? FontWeight.bold : FontWeight.normal,
                                ),
                              ),
                              Text(weekList[index][1],
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1.0),
                                    fontFamily: 'Quicksand',
                                    fontWeight: weekList[index][1] == thisInstant.day.toString() ? FontWeight.bold : FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    )
                  ),
                ],
              ),
            ),
            new Expanded(
              child: ListView.builder(
                itemCount: detailList.length,
                itemBuilder: (BuildContext context, int index){
                  return Stack(
                    children: [
                      Container(
                        height: 70,
                        width: 380,
                        margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            new BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                              offset: new Offset(0.0, 10.0),
                              blurRadius: 20.0,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 380 * double.parse(detailList[index][4]),
                        margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(249, 209, 4, 1.0),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        padding: const EdgeInsets.fromLTRB(24, 16, 16, 16),

                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 38,
                              width: 278,
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(detailList[index][0],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Quicksand'
                                    ),
                                  ),
                                  Text(detailList[index][1],
                                    style: TextStyle(
                                      height: 1.85,
                                      fontSize: 12,
                                      color: Color.fromRGBO(31, 28, 12, 0.5),
                                      fontFamily: 'Quicksand'
                                    )
                                  ),
                                ]
                              ),
                            ),

                            SvgPicture.asset(
                              customIcon1,
                              placeholderBuilder: (BuildContext context) => Container(
                                height: 10,
                                width: 10,
                              ),
                            ),

                            Container(
                              height: 10,
                              width: 10,
                              margin: const EdgeInsets.fromLTRB(2, 0, 8, 0),

                              child:
                              Text(detailList[index][2],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontFamily: 'Quicksand'
                                )
                              ),
                            ),

                            SvgPicture.asset(
                              customIcon2,
                              placeholderBuilder: (BuildContext context) => Container(
                                height: 10,
                                width: 10,
                              ),
                            ),

                            Container(
                              height: 10,
                              width: 10,
                              margin: const EdgeInsets.fromLTRB(5, 0, 1, 0),

                              child:
                              Text(detailList[index][3],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontFamily: 'Quicksand'
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                  );
                }
              )
            ),
          ],
        ),
      ),
    );
  }
}


weakling(){
  int todayIndex;
  var thisInstant = new DateTime.now();
  List<Map<int, String>> weekList = [
    {0: 'S', 1: '0'}, {0: 'M', 1: '0'}, {0: 'T', 1: '0'}, {0: 'W', 1: '0'}, {0: 'T', 1: '0'}, {0: 'F', 1: '0'}, {0: 'S', 1: '0'},
  ];

  for(int i = 1; i<8; i++){
    if(i == thisInstant.weekday){
      if(thisInstant.weekday == 7){
        weekList[0][1] = thisInstant.day.toString();
        todayIndex = 0;
      }
      else{
        weekList[i][1] = thisInstant.day.toString();
        todayIndex = i;
      }
    }
  }

  int j = todayIndex;
  int k = todayIndex;
  int todayJ = thisInstant.day;
  int todayK = thisInstant.day;
  int month = thisInstant.month;

  while(j > 0){
    if(todayJ == 1){
      if(month == 5 || month == 7 || month == 10 || month == 12 ){
        todayJ = 31;
      }
      else if(month == 3){
        todayJ = 29;
      }
      else{
        todayJ = 32;
      }
    }
    weekList[j-1][1] = (--todayJ).toString();
    j--;
  }

  while(k != 6){
    if((todayK == 31)||(month == 2 && todayK == 28)||(todayK == 30 && (month == 4 || month == 6 || month == 9 || month == 11))){
      todayK = 0;
    }
    weekList[k+1][1] = (++todayK).toString();
    k++;
  }

  return weekList;
}
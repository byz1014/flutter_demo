import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoalsafe/main/mainCoalShow.dart';
class HomeView extends StatefulWidget {
    MyHomePageState page;

  HomeView(this.page);

  @override
  State<StatefulWidget> createState() => HomeViewState(page);

}

class HomeViewState extends State<HomeView> {

  MyHomePageState page;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              child:Container(
                child: Text(
                  "百度地图",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                padding: EdgeInsets.only(bottom: 30),
              ) ,
              onTap: (){
                print('asddddddddddddd');
                setState(() {
                  page.show(true);
                });
              },

            ),
            color: Color.fromARGB(255, 45, 89, 200),
          ),
          Container(
            height: 100,
            child: PageView(
              reverse: false,
              controller: PageController(
                initialPage: 0,
                viewportFraction: 0.7,
                keepPage: true,
              ),
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  color: Colors.white,
                  elevation: 20.0,
                  clipBehavior: Clip.antiAlias,
                  semanticContainer: false,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              "images/safe_icon.png",
                              width: 25,
                              height: 25,
                            ),
                            Container(
                              child: Text(
                                "安全监控",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              margin: EdgeInsets.only(left: 10),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "images/online.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                child: Text(
                                  "在线",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                margin: EdgeInsets.only(left: 5),
                              ),
                              Container(
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                margin: EdgeInsets.only(left: 5),
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Image.asset(
                                    "images/off_line.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  Container(
                                    child: Text(
                                      "离线",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    margin: EdgeInsets.only(left: 5),
                                  ),
                                  Container(
                                    child: Text(
                                      "12",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    margin: EdgeInsets.only(left: 5),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        )
//                        margin: EdgeInsets.only(top: 20),)
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(25, 11, 25, 0),
                  ),
                  margin: EdgeInsets.only(right: 10),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  color: Colors.white,
                  elevation: 20.0,
                  clipBehavior: Clip.antiAlias,
                  semanticContainer: false,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              "images/person_icon.png",
                              width: 25,
                              height: 25,
                            ),
                            Container(
                              child: Text(
                                "人员监控",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              margin: EdgeInsets.only(left: 10),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "images/online.png",
                                width: 25,
                                height: 25,
                              ),
                              Container(
                                child: Text(
                                  "在线",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                margin: EdgeInsets.only(left: 5),
                              ),
                              Container(
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                margin: EdgeInsets.only(left: 5),
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Image.asset(
                                    "images/off_line.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  Container(
                                    child: Text(
                                      "离线",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    margin: EdgeInsets.only(left: 5),
                                  ),
                                  Container(
                                    child: Text(
                                      "12",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    margin: EdgeInsets.only(left: 5),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        )
//                        margin: EdgeInsets.only(top: 20),)
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(25, 11, 25, 0),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  color: Colors.white,
                  elevation: 20.0,
                  clipBehavior: Clip.antiAlias,
                  semanticContainer: false,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              "images/alert_icon.png",
                              width: 25,
                              height: 25,
                            ),
                            Container(
                              child: Text(
                                "报警分析",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              margin: EdgeInsets.only(left: 10),
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text("人员报警",
                                style: TextStyle(color: Colors.black,fontSize: 14),),
                                flex: 1,
                              ),
                              Expanded(
                                child: Text("安全监控",
                                  style: TextStyle(color: Colors.black,fontSize: 14),),
                                flex: 1,
                              ),
                            ],
                          ),
                        )
//                        margin: EdgeInsets.only(top: 20),)
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(25, 11, 25, 0),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 37),
          )
        ],
      ),
    );
  }

  HomeViewState(this.page);
}



import 'package:flutter/material.dart';
import 'package:fluttercoalsafe/bean/main_police_frame.dart';
import 'package:fluttercoalsafe/main/alert.dart';
import 'package:fluttercoalsafe/main/home.dart';
import 'package:fluttercoalsafe/main/info_manager.dart';
import 'package:fluttercoalsafe/main/me.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class  MyHomePageState extends State<MyHomePage> {
  var itemtags = ["风险等级","今日上报隐患数","报警总数","预警总数","井下人员","当班井下领导"];
  var itemicons = ["images/weixian.png","images/yinhuan.png","images/jingbao.png","images/yujing.png","images/jxry.png","images/lingdao.png"];
  var currentIndex = 0;
  var list = new List();
  var showtop = true;
  List<Widget> listWidget = new List();
  List<PoliceFrameBean> listBeanWidget = new List();

  void createListView(){
    for(int i=0;i<itemtags.length;i++){
      listBeanWidget.add(new PoliceFrameBean(
          policeName: itemtags[i],
          rightNum: i == 0 ? "较高危险":"1",
          icon: itemicons[i]
      ));
    }

    listWidget.clear();
    listWidget.add(Container(
      child: Text("六家煤矿",style: TextStyle(fontSize: 17,color: Colors.white),),
    ));



    for(int i=0;i<listBeanWidget.length;i++){
      Container container = new   Container(
        child: Row(
          children: <Widget>[
            Image.asset(listBeanWidget[i].icon,width: 20,height: 20,),
            Container(
              child: Text(listBeanWidget[i].policeName ,
                style: TextStyle(
                    color:    Colors.white,
                    fontSize: 14
                ),),
              margin: EdgeInsets.only(left: 16),
            ),
            Expanded(child: Container(
              child: Text(listBeanWidget[i].rightNum,style: TextStyle(
                  color:listBeanWidget[i].rightNum == "较高危险" ? Colors.red : Colors.white,
                  fontSize: 14
              ),),
              alignment: Alignment.centerRight,
            ))
          ],
        ),
        margin: EdgeInsets.only(top: 25),
      );
      listWidget.add(container);
    }


  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//
    createListView();
    if (list.length == 0) {
      list.add(HomeView(this));
      list.add(AlartHome());
      list.add(InfoManagerView());
      list.add(MeView());
    }
  }

  void show(bool show){
    setState(() {
      showtop = show;
    });
  }


  void changeIndex(int index) {
    if (currentIndex == index) {
      return;
    }
    setState(() {
      show(false);
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 255, 255),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            list[currentIndex],
            Visibility(
              visible: showtop,
              child: Container(
                color: Color.fromARGB(100, 0, 0, 0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child:GestureDetector(
                        child: Container(
                          child: Text(""),
                          width: double.maxFinite,
                          height: double.maxFinite,
                        ),
                        onTap: (){
                          setState(() {
                            showtop = !showtop;
                          });
                        },
                      ) ,
                      flex: 2,
                    ),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 37, 55, 89),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                        ),
                        child:  ListView(
                          children: listWidget,
                        ),
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(30, 15, 30, 80),
                      ),
                      flex: 4,
                    )
                  ],
                ),
              ),

            ),

            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset(
                          currentIndex == 0
                              ? "images/home_2.png"
                              : "images/home.png",
                          width: 22,
                          height: 22,
                        ),
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      ),
                      onTap: () {
                        changeIndex(0);
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        color: Colors.transparent,
                        child: Image.asset(
                          currentIndex == 1
                              ? "images/alert_2.png"
                              : "images/alert.png",
                          width: 22,
                          height: 22,
                        ),
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      ),
                      onTap: () {
                        changeIndex(1);
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        child: Image.asset(
                          currentIndex == 2
                              ? "images/person_2.png"
                              : "images/person.png",
                          width: 22,
                          height: 22,
                        ),
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      ),
                      onTap: () {
                        changeIndex(2);
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Image.asset(
                        currentIndex == 3 ? "images/me_2.png" : "images/me.png",
                        width: 22,
                        height: 22,
                      ),
                      onTap: () {
                        changeIndex(3);
                      },
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            )
          ],
        ));
  }

}


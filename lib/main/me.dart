import 'package:flutter/material.dart';
import 'package:fluttercoalsafe/aboutWe.dart';
import 'package:fluttercoalsafe/dialog/choosePicture.dart';
import 'package:fluttercoalsafe/dialog/loginOut.dart';
import 'package:fluttercoalsafe/fixPassword.dart';


class MeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MeViewState();
}

/**
 *
 */
class MeViewState extends State<MeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                color: Color.fromARGB(255, 37, 55, 89),
                child: GestureDetector(
                  child: Container(
                    child: Image.asset(
                      "images/out_login.png",
                      width: 22,
                      height: 22,
                    ),
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  ),
                  onTap: (){

                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return LoginOutDialog(
                            onLoginOut: (){
                              Navigator.pop(context);
                            },
                          );
                        });

                  },
                ),
                height: 190,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Image.asset(
                        "images/defult_head.png",
                        width: 75,
                        height: 75,
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return ChoosePictureDialog(
                                cameraPhoto: () {
                                  Navigator.pop(context);
                                },
                                choosePhoto: () {
                                  Navigator.pop(context);
                                },
                              );
                            });
                      },
                    ),
                    Container(
                      child: Text(
                        "孙悟空",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      margin: EdgeInsets.only(top: 20),
                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 50),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Image.asset("images/back_icon_1.png"),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  "images/dev_icon.png",
                                  width: 20,
                                  height: 20,
                                ),
                                margin: EdgeInsets.only(right: 18),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "设备待审核",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 15),
                                  ),
                                  Container(
                                    child: Text(
                                      "8",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 164, 16, 18),
                                          fontSize: 18),
                                    ),
                                    margin: EdgeInsets.only(top: 10),
                                  )
                                ],
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.fromLTRB(20, 0, 7, 0),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  "images/person_child_icon.png",
                                  width: 20,
                                  height: 20,
                                ),
                                margin: EdgeInsets.only(right: 18),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "人员待审核",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 153, 153, 153),
                                        fontSize: 15),
                                  ),
                                  Container(
                                    child: Text(
                                      "15",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 164, 16, 18),
                                          fontSize: 18),
                                    ),
                                    margin: EdgeInsets.only(top: 10),
                                  )
                                ],
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.fromLTRB(7, 0, 20, 0),
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "images/yuqi.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  margin: EdgeInsets.only(right: 18),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "逾期任务",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 153, 153, 153),
                                          fontSize: 15),
                                    ),
                                    Container(
                                      child: Text(
                                        "8",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 164, 16, 18),
                                            fontSize: 18),
                                      ),
                                      margin: EdgeInsets.only(top: 10),
                                    )
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.fromLTRB(20, 0, 7, 0),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    "images/over_icon.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                  margin: EdgeInsets.only(right: 18),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "已完成任务",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 153, 153, 153),
                                          fontSize: 15),
                                    ),
                                    Container(
                                      child: Text(
                                        "1245",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 164, 16, 18),
                                            fontSize: 18),
                                      ),
                                      margin: EdgeInsets.only(top: 10),
                                    )
                                  ],
                                )
                              ],
                            ),
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.fromLTRB(7, 0, 20, 0),
                          ),
                          flex: 1,
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(top: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          child:  Container(
                            color: Colors.transparent,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "images/fix_pswd.png",
                                  width: 18,
                                  height: 18,
                                ),
                                Container(
                                  child: Text(
                                    "修改密码",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  margin: EdgeInsets.only(left: 10),
                                ),
                                Expanded(
                                    child: Container(
                                      alignment: Alignment(1, 0.5),
                                      child: Image.asset(
                                        "images/right.png",
                                        width: 8,
                                        height: 16,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) {
                              return new FixPassword();
                            }));
                          },
                        ),
                        Container(
                          color: Color.fromARGB(255, 233, 234, 236),
                          width: double.maxFinite,
                          height: 0.5,
                        ),

                        GestureDetector(
                          child:   Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.all(15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "images/opinion_me.png",
                                  width: 18,
                                  height: 18,
                                ),
                                Container(
                                  child: Text(
                                    "关于我们",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                  margin: EdgeInsets.only(left: 10),
                                ),
                                Expanded(
                                    child: Container(
                                      alignment: Alignment(1, 0.5),
                                      child: Image.asset(
                                        "images/right.png",
                                        width: 8,
                                        height: 16,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_) {
                              return new AboutWet();
                            }));
                          },
                        )
                      ,
                      ],
                    ),
                    margin: EdgeInsets.fromLTRB(20, 22, 20, 0),
                  )
                ],
              )
            ],
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
    );
  }
}

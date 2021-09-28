import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DevAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DevAlertState();
}

class DevAlertState extends State<DevAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 20),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shadowColor: Colors.black,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "内蒙古赤峰市元宝山区六家煤矿",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 15),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text("报警系统")),
                        Align(
                          child: Text("设备报警"),
                          alignment: Alignment(1, 0.5),
                        )
                      ],
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text("报警系统")),
                          Align(
                            child: Text("设备报警"),
                            alignment: Alignment(1, 0.5),
                          )
                        ],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    ),
                    Container(
                      height: 0.5,
                      width: double.maxFinite,
                      color: Color.fromARGB(255, 233, 234, 236),
                      margin: EdgeInsets.only(bottom: 15),
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "images/oclock.png",
                          width: 20,
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            "2020-11-30 14:33:45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 34, 34, 34),
                                fontSize: 14),
                          ),
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text("设备待审核",style: TextStyle(color: Color.fromARGB(255, 164, 16, 18),fontSize: 12),),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255,247, 247, 247),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            );
          }),
    );
  }
}

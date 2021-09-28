import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fluttercoalsafe/alert_child/complete.dart';
import 'package:fluttercoalsafe/alert_child/dev_alert.dart';
import 'package:fluttercoalsafe/alert_child/overdue.dart';
import 'package:fluttercoalsafe/alert_child/person_alert.dart';

class AlartHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 37, 55, 89),
              title: Text("报警信息管理"),
              centerTitle: true,
              actions: <Widget>[
                GestureDetector(
                  child: Container(
                    child: Image.asset(
                      "images/date.png",
                      width: 20,
                      height: 20,
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Container(
                    child: Image.asset(
                      "images/select.png",
                      width: 20,
                      height: 20,
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  onTap: () {},
                ),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "设备审核",
                  ),
                  Tab(
                    text: "人员审核",
                  ),
                  Tab(
                    text: "已逾期",
                  ),
                  Tab(
                    text: "已完成",
                  )
                ],
                indicatorColor: Color.fromARGB(255, 0, 154, 157),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 4,
                onTap: (index) {},
              ),
            ),
            body: Container(
              child: TabBarView(
                children: [
                  DevAlert(),
                  DevAlert(),
                  DevAlert(),
                  DevAlert(),
//              PersonAlert(),
//              OverdueAlert(),
//              CompleteView(),
                ],
              ),
              padding: EdgeInsets.only(bottom: 65),
            )));
  }
}

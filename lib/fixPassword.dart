import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FixPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FixPasswordState();
}

class FixPasswordState extends State<FixPassword> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController phoneController1 = TextEditingController();
  TextEditingController phoneController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "修改密码",
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        centerTitle: true,
        leading: GestureDetector(
          child: Container(
            child: Image.asset("images/coal_back.png"),
            padding: EdgeInsets.all(20),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "修改密码",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
          ),
          Container(
            child: TextField(
              controller: phoneController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "请输入旧密码",
                contentPadding: EdgeInsets.fromLTRB(0, 15, 15, 10),
                border: InputBorder.none,
              ),
              autofocus: false,
            ),
            margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
          ),
          Container(
            height: 0.5,
            color: Color.fromARGB(255, 233, 234, 236),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          ),
          Container(
            child: TextField(
              controller: phoneController1,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "请设置新密码",
                contentPadding: EdgeInsets.fromLTRB(0, 15, 15, 10),
                border: InputBorder.none,
              ),
              autofocus: false,
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          ),
          Container(
            height: 0.5,
            color: Color.fromARGB(255, 233, 234, 236),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          ),
          Container(
            child: TextField(
              controller: phoneController2,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "请确认新密码",
                contentPadding: EdgeInsets.fromLTRB(0, 15, 15, 10),
                border: InputBorder.none,
              ),
              autofocus: false,
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          ),
          Container(
            height: 0.5,
            color: Color.fromARGB(255, 233, 234, 236),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          ),
          Expanded(
              child:
              GestureDetector(
                child:  Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 60),
                  child: Container(
                    height: 44,
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    child: Text(
                      "确认修改",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 154, 157),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ) ,
                onTap: (){
//                  phoneController2.text = phoneController.text;
                },
              ),
          )
        ],
      ),
    );
  }
}

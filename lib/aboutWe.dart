

import 'package:flutter/material.dart';

class AboutWet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutWetState();
  }
}

class AboutWetState extends State<AboutWet>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "关于我们",
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

    );
  }

}



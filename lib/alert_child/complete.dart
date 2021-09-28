import 'package:flutter/material.dart';

class CompleteView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CompleteViewState();
}

class CompleteViewState extends State<CompleteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("已完成"),
        alignment: Alignment.center,
        color: Colors.amberAccent,
      ),
    );
  }
}

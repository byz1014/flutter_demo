import 'package:flutter/material.dart';

class OverdueAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OverdueAlertState();
}

class OverdueAlertState extends State<OverdueAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("已逾期"),
        alignment: Alignment.center,
        color: Colors.green,
      ),
    );
  }
}

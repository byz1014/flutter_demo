import 'package:flutter/material.dart';

class PersonAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PersonAlertState();
}

class PersonAlertState extends State<PersonAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("人员待审核"),
        alignment: Alignment.center,
        color: Colors.blue,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginOutDialog extends Dialog {
  Function onLoginOut;

  LoginOutDialog({Key key, this.onLoginOut});

  @override
  Widget build(BuildContext context) {
    return LoginOutView(onLoginOut);
  }
}

class LoginOutView extends StatefulWidget {
  Function onLoginOut;

  LoginOutView(this.onLoginOut);

  @override
  State<StatefulWidget> createState() {
    return LoginOutViewState(onLoginOut);
  }
}

class LoginOutViewState extends State<LoginOutView> {
  Function onLoginOut;

  LoginOutViewState(this.onLoginOut);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(),
          flex: 6,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child:   Container(
                    alignment: Alignment.center,
                    child: Text(
                      "退出登录",
                      style: TextStyle(color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.none
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    margin: EdgeInsets.fromLTRB(35, 35 , 35, 0),
                    padding: EdgeInsets.all(14.5),
                  ),
                  onTap:onLoginOut,
                ),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    child: Image.asset("images/close_dialog.png",
                        width: 25, height: 25),
                    padding: EdgeInsets.all(10),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )),
              ],
            ),
          ),
          flex: 2,
        ),
      ],
    );
  }
}

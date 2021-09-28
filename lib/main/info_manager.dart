import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoManagerView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfoManagerViewState();
}

class InfoManagerViewState extends State<InfoManagerView> {
  var controller = new ScrollController();
  TextEditingController phoneController = TextEditingController();
  int listIndex = 0;

  @override
  Widget build(BuildContext context) {

    List  list = ["内蒙古平庄能源股份有限公司公营子煤矿","风水沟煤矿","公营子煤矿","建昌营煤矿"];


    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        alignment: Alignment.center,
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            prefixIcon:Image.asset("images/select_black_icon.png"),
                            hintText: "搜索煤矿",
                            contentPadding: EdgeInsets.fromLTRB(18, 14, 14, 10),
                            border: InputBorder.none,
                          ),
                          autofocus: false,
                        )),
                  ),
                  Container(
                    child: Text(
                      "取消",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  )
                ],
              ),

              margin: EdgeInsets.only(top: 10),
            ),
            padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
          ),
          Expanded(
              child: ListView.builder(
            //解决无限高度问题
            shrinkWrap: true,
            //禁用滑动事件
            physics: NeverScrollableScrollPhysics(),
            itemCount: list.length,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      color: listIndex == index
                          ? Color.fromARGB(255, 37, 55, 89)
                          : Colors.white,
//                      37, 55, 89
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: double.maxFinite,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            list[index],
                        style: TextStyle(
                            color: listIndex == index
                                ? Colors.white
                                : Color.fromARGB(255, 34, 34, 34),
                            fontSize: 14),
                      )),
                      Image.asset(
                        "images/right.png",
                        width: 8,
                        height: 19,
                      )
                    ],
                  ),
                  padding: EdgeInsets.fromLTRB(16, 23, 16, 23),
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                ),
                onTap: () {
                  setState(() {
                    listIndex = index;
                  });
                },
              );
            },
          ))
        ],
      ),
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
    );
  }
}

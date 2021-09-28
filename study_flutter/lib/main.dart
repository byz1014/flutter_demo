import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text("学习Flutter"),
        centerTitle: true,
        leading: Icon(Icons.add),
        actions: <Widget>[
          Icon(Icons.list),
          Container(
            alignment: Alignment.centerRight,
            child: Text("更多"),
          ),
        ],
        flexibleSpace: Icon(Icons.add),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("flutter"),
            Text.rich(TextSpan(children: <InlineSpan>[
              TextSpan(
                  text: "富强", style: TextStyle(color: Colors.blue, fontSize: 12)),
              TextSpan(
                  text: "民主", style: TextStyle(color: Colors.red, fontSize: 20)),
              TextSpan(
                  text: "文明",
                  style: TextStyle(color: Colors.green, fontSize: 16)),
              TextSpan(
                  text: "和谐",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 25)),
            ])),
            Icon(Icons.access_alarm),
            GestureDetector(
              child: Container(
                child: Image.asset(
                  "images/rain.png",
                ),
                padding: EdgeInsets.all(10),
                color: Colors.amber,
              ),
              onTap: () {
                print('111111111111111111111111111111111');
              },
            ),

            Row(
              children: <Widget>[
                Expanded(child: Container(
                  width: double.maxFinite,
                  color: Colors.amber,
                  child: Text("aaaaaaaaaaaa"),
                ),
                flex: 1,),
              Expanded(child:Container(
                width: double.maxFinite,
                color: Colors.blue,
                child: Text("bbbbbbbbbbbbbbbbbbb"),
              ),
                flex: 1,)
                ,
                Expanded(child: Container(
                  width: double.maxFinite,
                  color: Colors.red,
                  child: Text("ccccccccccccccccccccccccccccccccc"),
                ),
                  flex: 2,)


              ],
            ),
            Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fs16.sinaimg.cn%2Fbmiddle%2F4b0f2b2e2c6c81f66aaaf&refer=http%3A%2F%2Fs16.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1630834079&t=31ba2c0cfc8695c70712fca08872c8f6")

          ],
        ),
      ),



    );
  }
}

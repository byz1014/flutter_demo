import 'package:flutter/material.dart';

class ChoosePictureDialog extends Dialog {
  Function choosePhoto;
  Function cameraPhoto;

  ChoosePictureDialog({Key key, this.choosePhoto, this.cameraPhoto});

  @override
  Widget build(BuildContext context) {
    return DialogWidget(choosePhoto, cameraPhoto);
  }
}

class DialogWidget extends StatefulWidget {
  Function choosePhoto;
  Function cameraPhoto;

  DialogWidget(this.choosePhoto, this.cameraPhoto);

  @override
  State<StatefulWidget> createState() {
    return DialogWidgetState(choosePhoto, cameraPhoto);
  }
}

class DialogWidgetState extends State<DialogWidget> {
  Function choosePhoto;
  Function cameraPhoto;

  DialogWidgetState(this.choosePhoto, this.cameraPhoto);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.transparent,
          ),
          flex: 5,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "images/take_photo.png",
                                  width: 44,
                                  height: 44,
                                ),
                                Text(
                                  "拍照",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decoration: TextDecoration.none),
                                )
                              ],
                            ),
                            onTap: cameraPhoto,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("images/picture_lib.png",
                                    width: 44, height: 44),
                                Text(
                                  "相册",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decoration: TextDecoration.none),
                                )
                              ],
                            ),
                            onTap: choosePhoto,
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    child: Image.asset("images/close_dialog.png",
                        width: 25, height: 25),
                    padding: EdgeInsets.all(10),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
              mainAxisSize: MainAxisSize.min,
            ),
          ),
          flex: 2,
        )
      ],
    );
  }

//  - images/picture_lib.png
//  - images/take_photo.png
//  - images/close_dialog.png
}

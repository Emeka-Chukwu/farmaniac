import 'package:farmaniac/configs/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void loginProgress(BuildContext context) {
  showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text(
          //   "Authenticating",
          //   style: TextStyle(
          //     color: white,
          //     fontSize: Responsive.textSize(4, context),
          //   ),
          // ),
          backgroundColor: darkBlue,
          content: Container(
            height: Responsive.screenHeight(16, context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                YMargin(
                  Responsive.screenHeight(2, context),
                ),
                Text(
                  "Authenticating",
                  style: TextStyle(
                    color: white,
                    fontSize: Responsive.textSize(4, context),
                  ),
                ),
                YMargin(
                  Responsive.screenHeight(2, context),
                ),
                CircularProgressIndicator(
                  strokeWidth: Responsive.screenWidth(1, context),
                  backgroundColor: green,
                ),
                YMargin(
                  Responsive.screenHeight(2.5, context),
                ),
                Text(
                  "loading",
                  style: TextStyle(
                    color: white,
                    fontSize: Responsive.textSize(3, context),
                  ),
                ),
              ],
            ),
          ),
          // actions: [
          //   FlatButton(
          //       onPressed: () => Navigator.of(context).pop(), child: Text("Ok"))
          // ],
        );
      });
}

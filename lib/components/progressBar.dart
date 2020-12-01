import 'package:farmaniac/configs/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void progressBar(BuildContext context,
    {String title,
    String description,
    Color color,
    Color white = Colors.white}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: color,
          content: Container(
            height: Responsive.screenHeight(16, context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                YMargin(
                  Responsive.screenHeight(2, context),
                ),
                Text(
                  title,
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
                  backgroundColor: white,
                ),
                YMargin(
                  Responsive.screenHeight(2.5, context),
                ),
                Text(
                  description,
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

void dialogWarning(BuildContext context,
    {String title,
    String description,
    Color color,
    Color white = Colors.white}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: color,
          content: Container(
            height: Responsive.screenHeight(16, context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                YMargin(
                  Responsive.screenHeight(2, context),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: white,
                    fontSize: Responsive.textSize(4, context),
                  ),
                ),
                YMargin(
                  Responsive.screenHeight(2.5, context),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: white,
                    fontSize: Responsive.textSize(3, context),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(
                onPressed: () => Navigator.of(context).pop(), child: Text("Ok"))
          ],
        );
      });
}

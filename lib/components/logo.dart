import 'package:farmaniac/configs/configs.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: Responsive.constScreenHeight(14.5, context),
        width: Responsive.screenWidth(17, context),
        color: green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "F A R",
              style: TextStyle(
                color: white,
                fontSize: Responsive.textSize(3.6, context),
                fontWeight: FontWeight.w400,
                height: Responsive.textSize(.3, context),
              ),
            ),
            Text(
              "MAN",
              style: TextStyle(
                color: white,
                fontSize: Responsive.textSize(3.6, context),
                fontWeight: FontWeight.w400,
                height: Responsive.textSize(.3, context),
              ),
            ),
            Text(
              "I A C",
              style: TextStyle(
                color: white,
                fontSize: Responsive.textSize(3.6, context),
                fontWeight: FontWeight.w400,
                height: Responsive.textSize(.3, context),
              ),
            ),
          ],
        ));
  }
}

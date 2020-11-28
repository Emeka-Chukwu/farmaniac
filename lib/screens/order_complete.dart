import 'package:farmaniac/configs/color.dart';
import 'package:farmaniac/configs/configs.dart';
import 'package:flutter/material.dart';

class CompleteOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: Responsive.screenHeight(12, context),
                width: Responsive.screenHeight(12, context),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: white, width: Responsive.textSize(.5, context)),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check,
                    color: white, size: Responsive.screenHeight(7, context)),
              ),
            ),
            YMargin(Responsive.screenHeight(2, context)),
            Text(
              "Order Complete",
              style: TextStyle(
                color: white,
                fontSize: Responsive.textSize(4.5, context),
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

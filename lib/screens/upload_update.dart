import 'package:farmaniac/configs/color.dart';
import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/screens/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ProductAdded extends StatefulWidget {
  @override
  _ProductAddedState createState() => _ProductAddedState();
}

class _ProductAddedState extends State<ProductAdded> {
  @override
  void intiState() {
    redirectTo();
    super.initState();
  }

  Future<void> redirectTo() async {
    Future.delayed(Duration(seconds: 5), () async {
      // if (auths.persistLoggin(context)) {
      //   changeScreen(context, BottomNavigationSheet());
      // } else {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => BottomNavigationSheet()));
      });

      // changeScreen(context, widget)
    });
  }

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
              "Product Uploaded",
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

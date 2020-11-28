import 'package:farmaniac/components/logo.dart';
import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/screens/buyer_register.dart';
import 'package:farmaniac/screens/farmer_register.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Container(
          child: Column(
        children: [
          Container(
            height: Responsive.screenHeight(50, context),
            width: Responsive.screenWidth(100, context),
            child: Align(
              alignment: Alignment.center,
              child: Logo(),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        Responsive.screenWidth(8, context),
                      ),
                      topRight: Radius.circular(
                        Responsive.screenWidth(8, context),
                      ),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    YMargin(Responsive.screenHeight(5, context)),
                    Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.screenHeight(11, context)),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: darkBlue,
                          fontWeight: FontWeight.w700,
                          fontSize: Responsive.textSize(5.2, context),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: Responsive.screenHeight(1.5, context),
                          left: Responsive.screenHeight(11, context)),
                      child: Text(
                        "Signup as a Farmer or a Buy to get started",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: darkBlue,
                          fontWeight: FontWeight.w200,
                          fontSize: Responsive.textSize(3, context),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: Responsive.screenHeight(10, context)),
                          child: Align(
                            // alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () =>
                                  changeScreen(context, FarmerRegister()),
                              child: Container(
                                height: Responsive.screenHeight(30, context),
                                width: Responsive.screenWidth(28, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Responsive.screenWidth(5, context)),
                                  color: green,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/farmer.png"),
                                    YMargin(
                                        Responsive.screenHeight(2, context)),
                                    Text(
                                      "Farmer",
                                      style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: Responsive.textSize(
                                              3.7, context)),
                                    ),
                                    YMargin(
                                        Responsive.screenHeight(2, context)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              Responsive.textSize(2, context)),
                                      child: Text(
                                        "Upload Product to sell",
                                        style: TextStyle(
                                            color: white,
                                            fontWeight: FontWeight.w200,
                                            fontSize: Responsive.textSize(
                                                2.6, context)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: Responsive.screenWidth(17, context),
                              right: Responsive.screenWidth(20, context)),
                          child: Align(
                            // alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () =>
                                  changeScreen(context, BuyerRegister()),
                              child: Container(
                                height: Responsive.screenHeight(30, context),
                                width: Responsive.screenWidth(28, context),
                                decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(
                                      Responsive.screenWidth(5, context)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/buyer.png"),
                                    YMargin(
                                        Responsive.screenHeight(2, context)),
                                    Text(
                                      "Buyer",
                                      style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: Responsive.textSize(
                                              3.7, context)),
                                    ),
                                    YMargin(
                                        Responsive.screenHeight(2, context)),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              Responsive.textSize(2, context)),
                                      child: Text(
                                        "Buy from wide of products",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: white,
                                            fontWeight: FontWeight.w200,
                                            fontSize: Responsive.textSize(
                                                2.6, context)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          )
        ],
      )),
    );
  }
}

import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/screens/bottom_navigation.dart';
import 'package:farmaniac/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FarmerRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auths = Provider.of<Authentication>(context);
    return ChangeNotifierProvider<Authentication>(
      create: (context) => Authentication(),
      child: Builder(
        builder: (context) {
          // if (auths.persistLoggin(context)) {
          //   changeScreen(context, BottomNavigationSheet());
          // }
          return Scaffold(
            backgroundColor: green,
            body: SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Responsive.screenWidth(10, context),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YMargin(Responsive.screenHeight(8, context)),
                      Text(
                        "Boss",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w800,
                          fontSize: Responsive.textSize(5, context),
                          height: Responsive.textSize(.2, context),
                        ),
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Text(
                        "Fill it, it’s worth the TIME",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: Responsive.textSize(5, context),
                          height: Responsive.textSize(.2, context),
                        ),
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Responsive.screenWidth(35, context),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                ),
                                labelStyle: TextStyle(
                                  color: white,
                                  fontSize: Responsive.textSize(3.5, context),
                                  fontWeight: FontWeight.w200,
                                ),
                                labelText: "firstname",
                              ),
                              onChanged: (String val) {
                                auths.firstname(val);
                              },
                              style: TextStyle(color: white),
                            ),
                          ),
                          Container(
                            width: Responsive.screenWidth(35, context),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                ),
                                labelStyle: TextStyle(
                                  color: white,
                                  fontSize: Responsive.textSize(3.5, context),
                                  fontWeight: FontWeight.w200,
                                ),
                                labelText: "lastname",
                              ),
                              onChanged: (String val) {
                                auths.lastname(val);
                              },
                              style: TextStyle(color: white),
                            ),
                          ),
                        ],
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            labelStyle: TextStyle(
                              color: white,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "email",
                          ),
                          onChanged: (String val) {
                            auths.emailAddress(val);
                          },
                          style: TextStyle(color: white),
                        ),
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            labelStyle: TextStyle(
                              color: white,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "phone number",
                          ),
                          onChanged: (String val) {
                            auths.phoneNumber(val);
                          },
                          style: TextStyle(color: white),
                        ),
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            labelStyle: TextStyle(
                              color: white,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "farm Name",
                          ),
                          onChanged: (String val) {
                            auths.theFarmname(val);
                          },
                          style: TextStyle(color: white),
                        ),
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            labelStyle: TextStyle(
                              color: white,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "Password",
                          ),
                          obscureText: true,
                          onChanged: (String val) {
                            auths.getPassword(val);
                          },
                          style: TextStyle(color: white),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(5, context),
                      ),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: white),
                            ),
                            labelStyle: TextStyle(
                              color: white,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "Confirm Password",
                          ),
                          obscureText: true,
                          onChanged: (String val) {
                            auths.getConfirmPassword(val);
                          },
                          style: TextStyle(color: white),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(5, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => auths.farmerSignUp(context),
                            child: Container(
                              alignment: Alignment.center,
                              width: Responsive.screenWidth(80, context),
                              height: Responsive.constScreenHeight(6, context),
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(
                                  Responsive.screenWidth(4, context),
                                ),
                              ),
                              child: Text(
                                "SIGNUP",
                                style: TextStyle(
                                    color: black,
                                    fontSize:
                                        Responsive.textSize(4.36, context)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen())),
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: white,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

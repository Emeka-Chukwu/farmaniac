import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
// import 'package:farmaniac/screens/available_product.dart';
import 'package:farmaniac/screens/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // redirectTo();
    super.initState();
  }

  Future<void> redirectTo() async {
    final auths = Provider.of<Authentication>(context);

    if (auths.persistLoggin(context)) {
      changeScreen(context, BottomNavigationSheet());
    }

    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (auths.persistLoggin(context)) {
        changeScreen(context, BottomNavigationSheet());
      }
      // print("Triggers nn");

      // changeScreen(context, widget)
    });
  }

  @override
  Widget build(BuildContext context) {
    final auths = Provider.of<Authentication>(context);
    // Future.delayed(Duration(seconds: 5), () {
    //   if (auths.persistLoggin(context)) {
    //     changeScreen(context, BottomNavigationSheet());
    //   } else {
    //     print("Triggers");
    //   }

    //   // changeScreen(context, widget)
    // });

    return ChangeNotifierProvider<Authentication>(
      create: (context) => Authentication(),
      child: Builder(
        builder: (context) {
          // if (auths.persistLoggin(context)) {
          //   changeScreen(context, BottomNavigationSheet());
          // }
          return Scaffold(
            backgroundColor: darkBlue,
            body: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Responsive.screenWidth(10, context)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Eben",
                      style: TextStyle(
                        color: white,
                        fontSize: Responsive.textSize(5.2, context),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    YMargin(Responsive.screenHeight(1, context)),
                    Row(
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: white,
                            fontSize: Responsive.textSize(5.2, context),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        XMargin(Responsive.screenWidth(3, context)),
                        Text(
                          "BACK!",
                          style: TextStyle(
                            color: green,
                            fontSize: Responsive.textSize(5.2, context),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    YMargin(Responsive.screenHeight(4, context)),
                    Text(
                      "Yo! welcome back to our esteemed platform we have news",
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w200),
                    ),
                    YMargin(Responsive.screenHeight(10, context)),
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
                            color: Colors.white,
                            fontSize: Responsive.textSize(3.5, context),
                            fontWeight: FontWeight.w200,
                          ),
                          labelText: "email address",
                        ),
                        style: TextStyle(color: white),
                        onChanged: (String val) {
                          auths.emailAddress(val);
                        },
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
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: Responsive.textSize(3.5, context),
                          ),
                          labelText: "password",
                        ),
                        obscureText: true,
                        style: TextStyle(color: white),
                        onChanged: (String val) {
                          auths.getPassword(val);
                        },
                      ),
                    ),
                    YMargin(
                      Responsive.screenHeight(9, context),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => auths.signIn(context),
                          child: Container(
                            alignment: Alignment.center,
                            width: Responsive.screenWidth(35, context),
                            height: Responsive.constScreenHeight(5.5, context),
                            decoration: BoxDecoration(
                              color: green,
                              borderRadius: BorderRadius.circular(
                                  Responsive.screenHeight(2, context)),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Responsive.textSize(4.36, context)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => changeScreen(context, Register()),
                          child: Container(
                            alignment: Alignment.center,
                            width: Responsive.screenWidth(35, context),
                            height: Responsive.constScreenHeight(5.5, context),
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(
                                  Responsive.screenHeight(2, context)),
                            ),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: black,
                                  fontSize: Responsive.textSize(4.36, context)),
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
                                builder: (context) => Scaffold())),
                        child: Text(
                          "Forgot your  password?",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w200,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

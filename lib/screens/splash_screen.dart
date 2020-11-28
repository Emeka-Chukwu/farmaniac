import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/screens/bottom_navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "login.dart";

class SplashScreen extends StatefulWidget {
  // SchedulerBinding.instance.addPostFrameCallback((_) {
  //     Navigator.of(context).pushReplacementNamed(MainScreen.routeName);
  //   });
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    redirectToLoginScreen();
    super.initState();
  }

  Future<void> redirectToLoginScreen() async {
    bool loggedIn = FirebaseAuth.instance.currentUser != null;
    print(loggedIn);

    Future.delayed(Duration(seconds: 2), () async {
      // if (auths.persistLoggin(context)) {
      //   changeScreen(context, BottomNavigationSheet());
      // } else {

      loggedIn
          ? changeScreen(context, BottomNavigationSheet())
          : Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
      SchedulerBinding.instance.addPostFrameCallback((_) {
        print(loggedIn);
        // loggedIn
        //     ? Navigator.pushReplacement(
        //         context, MaterialPageRoute(builder: (context) => LoginScreen()))
        //     : changeScreen(context, BottomNavigationSheet());
        print("Triggers nn");
      });

      // changeScreen(context, widget)
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(Responsive.screenHeight(100, context));
    // print(Responsive.screenWidth(100, context));

    final auths = Provider.of<Authentication>(context);

    auths.keepLoggedIn(context);

    return ChangeNotifierProvider<Authentication>(
      create: (context) => Authentication(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Align(
              alignment: Alignment.center,
              child: Container(
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
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

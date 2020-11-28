import 'package:farmaniac/configs/change_screen.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:farmaniac/screens/available_product.dart';
import 'package:farmaniac/screens/bottom_navigation.dart';
import 'package:farmaniac/screens/login.dart';
import 'package:farmaniac/services/auths.dart';
import 'package:flutter/cupertino.dart';

class Authentication with ChangeNotifier {
  UserServices userServices = UserServices();

  String lname;
  String fname;
  String email;
  String farmname;
  String password;
  String confirmpassword;
  String phone;
  Farmer farmer;
  bool checkedLoggedIn = false;

  void phoneNumber(String number) {
    phone = number;
    notifyListeners();
    print(phone);
  }

  void firstname(String name) {
    fname = name;
    notifyListeners();
  }

  void lastname(String name) {
    lname = name;
    notifyListeners();
  }

  void getPassword(String passwordAdd) {
    password = passwordAdd;
    notifyListeners();
  }

  void getConfirmPassword(String password) {
    confirmpassword = password;
    notifyListeners();
  }

  void theFarmname(String name) {
    farmname = name;
    notifyListeners();
  }

  void emailAddress(String emailAdd) {
    email = emailAdd;
    notifyListeners();
  }

  void signIn(BuildContext context) async {
    try {
      var user = await userServices.loginUserAccount(email, password);
      farmer = user;
      changeScreen(context, BottomNavigationSheet());
      notifyListeners();
    } catch (e) {
      print(e.toString());
      notifyListeners();
    }
  }

  void farmerSignUp(BuildContext context) async {
    print(fname);
    print(lname);
    print(email);
    print(password);
    print(confirmpassword);
    print("Sign up");
    Farmer farmer = Farmer(
        fname: fname,
        lname: lname,
        email: email,
        password: password,
        farmname: farmname,
        phone: phone,
        confirmpassword: confirmpassword);
    if (farmer.password == farmer.confirmpassword &&
        farmer.password.length >= 6) {
      try {
        await userServices.createUserAccount(farmer);
        changeScreen(context, LoginScreen());
      } catch (e) {
        print(e.toString());
      }
    }
  }

  void buyerSignUp(BuildContext context) async {
    Farmer farmer = Farmer(
      fname: fname,
      lname: lname,
      email: email,
      password: password,
      confirmpassword: confirmpassword,
    );
    print(fname);
    print(lname);
    print(email);
    print(password);
    print(confirmpassword);
    if (farmer.password == farmer.confirmpassword &&
        farmer.password.length >= 6) {
      try {
        await userServices.createUserAccount(farmer);
        changeScreen(context, BottomNavigationSheet());
      } catch (e) {
        print(e.toString());
      }
    }
  }

  void keepLoggedIn(BuildContext context) async {
    bool check = userServices.currentUserExist();
    if (userServices.currentUserExist()) {
      var user = await userServices.currentUser();
      farmer = user;
      notifyListeners();
    }
  }

  bool persistLoggin(BuildContext context) {
    return userServices.currentUserExist();
  }

  void logout(BuildContext context) async {
    print("logout");
    changeScreen(context, LoginScreen());

    try {
      await userServices.logoutUserAccount();
      // changeScreen(context, LoginScreen());
    } catch (err) {
      print(err);
      print("err");
    }
  }
}

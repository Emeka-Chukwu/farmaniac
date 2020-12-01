import 'dart:io';

import 'package:farmaniac/components/login.dart';
import 'package:farmaniac/components/progressBar.dart';
import 'package:farmaniac/configs/change_screen.dart';
import 'package:farmaniac/configs/color.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:farmaniac/screens/available_product.dart';
import 'package:farmaniac/screens/bottom_navigation.dart';
import 'package:farmaniac/screens/login.dart';
import 'package:farmaniac/services/auths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image_picker/image_picker.dart';

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

  File file;

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
    loginProgress(context);
    try {
      var user = await userServices.loginUserAccount(email, password);
      farmer = user;
      changeScreen(context, BottomNavigationSheet());
      notifyListeners();
    } catch (err) {
      Navigator.pop(context);
      dialogWarning(
        context,
        title: "Message",
        description: "${err.toString()}",
        color: darkBlue,
      );
      print(err.toString());
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
        isFarmer: true,
        confirmpassword: confirmpassword);

    progressBar(
      context,
      title: "Farmer Registration",
      description: "registering",
      color: green,
    );
    if (farmer.password == farmer.confirmpassword &&
        farmer.password.length >= 6) {
      try {
        await userServices.createUserAccount(farmer);
        changeScreen(context, LoginScreen());
      } catch (err) {
        print(err.toString());
        Navigator.pop(context);
        dialogWarning(
          context,
          title: "Message",
          description: "${err.toString()}",
          color: green,
        );
      }
    } else {
      Navigator.pop(context);

      dialogWarning(
        context,
        title: "Message",
        description: "Password should not be less than 6 and it should match",
        color: green,
      );
    }
  }

  void buyerSignUp(BuildContext context) async {
    Farmer farmer = Farmer(
        fname: fname,
        lname: lname,
        email: email,
        password: password,
        confirmpassword: confirmpassword,
        phone: phone);
    print(fname);
    print(lname);
    print(email);
    print(password);
    print(confirmpassword);
    print(phone);

    progressBar(
      context,
      title: "Buyer Registration",
      description: "registering",
      color: darkBlue,
    );
    if (farmer.password == farmer.confirmpassword &&
        farmer.password.length >= 6) {
      try {
        await userServices.createUserAccount(farmer);

        changeScreen(context, LoginScreen());
        // farmer = user;
      } catch (err) {
        print(err.toString());
        Navigator.pop(context);
        dialogWarning(
          context,
          title: "Message",
          description: "${err.toString()}",
          color: darkBlue,
        );
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
    // changeScreen(context, LoginScreen());

    try {
      await userServices.logoutUserAccount();
      changeScreen(context, LoginScreen());
    } catch (err) {
      // Navigator.pop(context);
      dialogWarning(
        context,
        title: "Message",
        description: "${err.toString()}",
        color: darkBlue,
      );
      print(err);
      print("err");
    }
  }

  Future<void> getImageDash() async {
    final picker = ImagePicker();
    var image = await picker.getImage(source: ImageSource.gallery);
    File compressedFile = await FlutterNativeImage.compressImage(image.path,
        quality: 95, targetHeight: 450, targetWidth: 450);
    file = compressedFile;
    notifyListeners();
    try {
      await (await userServices.submitDashBoardImage(file));
    } catch (e) {
      print(e);
    }
  }

  void clearImage() async {
    file = null;
    notifyListeners();
  }
}

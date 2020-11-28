import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Responsive {
  static double screenHeight(double height, BuildContext context) {
    var portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var viewportHeight = portrait
        ? MediaQuery.of(context).size.height - kToolbarHeight
        : MediaQuery.of(context).size.width - kToolbarHeight;
    return viewportHeight * (height / 100);
  }

  static double constScreenHeight(double height, BuildContext context) {
    var portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var viewportHeight = portrait
        ? MediaQuery.of(context).size.height - kToolbarHeight
        : MediaQuery.of(context).size.width - kToolbarHeight;
    return viewportHeight * (height / 100);
  }

  static double screenWidth(double width, BuildContext context) {
    var portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var viewportWidth = portrait
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width - kToolbarHeight;
    return viewportWidth * (width / 100);
  }

  static double textSize(double size, BuildContext context) {
    var portrait = MediaQuery.of(context).orientation == Orientation.portrait;
    var textSize = portrait
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height;
    return textSize * (size / 100);
  }
}

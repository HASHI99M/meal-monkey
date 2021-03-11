import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PsSize {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double reallyScreenWidth;
  static double reallyScreenHeight;
  static double defaultSizeWidth, defaultSizeHeight;
  static double appBarSize;
  static double statusBarHeight;
  static Orientation orientation;

  PsSize(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    orientation = _mediaQueryData.orientation;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    appBarSize = AppBar().preferredSize.height;
    statusBarHeight = _mediaQueryData.padding.top;
    defaultSizeWidth =  screenWidth * .0277777777777778;
    defaultSizeHeight = screenHeight * .015625;
  }
}

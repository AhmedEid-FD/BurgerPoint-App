import 'package:flutter/material.dart';

class ScreenSize {
  static late double constWidth;
  static late double constHeight;

  void init(BuildContext context) {
    constHeight = MediaQuery.of(context).size.width;
    constHeight = MediaQuery.of(context).size.width;
  }
}

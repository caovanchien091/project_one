import 'dart:ui';

import 'package:flutter/material.dart';

class ScreenSize {
  ScreenSize._();

  static MediaQueryData get data => MediaQueryData.fromWindow(window);

  static EdgeInsets get padding => data.padding;

  static EdgeInsets get viewPadding => data.viewPadding;

  static EdgeInsets get viewInsets => data.viewInsets;

  static Size get size => data.size;

  static double get height => size.height;

  static double get width => size.width;

  static double get heightPixel => height * devicePixelRatio;

  static double get widthPixel => width * devicePixelRatio;

  static double get screenAspectRatio => size.aspectRatio;

  static double get devicePixelRatio => data.devicePixelRatio;

  static double get paddingTop => padding.top;

  static double get paddingBottom => padding.bottom;

  static double get paddingLeft => padding.left;

  static double get paddingRight => padding.right;

  static double get viewPaddingTop => viewPadding.top;

  static double get viewPaddingBottom => viewPadding.bottom;

  static double get viewPaddingLeft => viewPadding.left;

  static double get viewPaddingRight => viewPadding.right;

  static double get viewInsetsTop => viewInsets.top;

  static double get viewInsetsBottom => viewInsets.bottom;

  static double get viewInsetsLeft => viewInsets.left;

  static double get viewInsetsRight => viewInsets.right;
}

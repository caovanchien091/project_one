import 'package:common/common.dart';
import 'package:flutter/material.dart';

extension SizeContextExtension on BuildContext {
  EdgeInsets get padding => ScreenSize.padding;

  EdgeInsets get viewPadding => ScreenSize.viewPadding;

  EdgeInsets get viewInsets => ScreenSize.viewInsets;

  Size get size => ScreenSize.size;

  double get height => ScreenSize.height;

  double get width => ScreenSize.width;

  double get heightPixel => ScreenSize.heightPixel;

  double get widthPixel => ScreenSize.widthPixel;

  double get screenAspectRatio => ScreenSize.screenAspectRatio;

  double get devicePixelRatio => ScreenSize.devicePixelRatio;

  double get paddingTop => ScreenSize.paddingTop;

  double get paddingBottom => ScreenSize.paddingBottom;

  double get paddingLeft => ScreenSize.paddingLeft;

  double get paddingRight => ScreenSize.paddingRight;

  double get viewPaddingTop => ScreenSize.viewPaddingTop;

  double get viewPaddingBottom => ScreenSize.viewPaddingBottom;

  double get viewPaddingLeft => ScreenSize.viewPaddingLeft;

  double get viewPaddingRight => ScreenSize.viewPaddingRight;

  double get viewInsetsTop => ScreenSize.viewInsetsTop;

  double get viewInsetsBottom => ScreenSize.viewInsetsBottom;

  double get viewInsetsLeft => ScreenSize.viewInsetsLeft;

  double get viewInsetsRight => ScreenSize.viewInsetsRight;
}

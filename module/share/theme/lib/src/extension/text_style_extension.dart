import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle? {
  TextStyle? get bold => this?.copyWith(
        fontWeight: FontWeight.bold,
      );

  TextStyle? get medium => this?.copyWith(
        fontWeight: FontWeight.w500,
      );

  TextStyle? get regular => this?.copyWith(
        fontWeight: FontWeight.normal,
      );

  TextStyle? get light => this?.copyWith(
        fontWeight: FontWeight.w300,
      );

  TextStyle? get italic => this?.copyWith(
        fontStyle: FontStyle.italic,
      );

  TextStyle? get lineThrough => this?.copyWith(
        decoration: TextDecoration.lineThrough,
      );

  TextStyle? get overLine => this?.copyWith(
        decoration: TextDecoration.overline,
      );

  TextStyle? get underline => this?.copyWith(
        decoration: TextDecoration.underline,
      );
}

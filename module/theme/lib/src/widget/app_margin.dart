import 'package:flutter/material.dart';

class AppMargin extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;

  const AppMargin({
    Key? key,
    required this.margin,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: child,
    );
  }
}

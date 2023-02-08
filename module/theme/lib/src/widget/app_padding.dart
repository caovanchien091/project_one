import 'package:flutter/material.dart';

class AppPadding extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const AppPadding({
    Key? key,
    required this.padding,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      child: child,
    );
  }
}

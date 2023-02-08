import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;

  const AppCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
    );
  }
}

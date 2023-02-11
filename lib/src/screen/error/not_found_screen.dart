import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  final RouteSettings settings;

  const NotFoundScreen({
    Key? key,
    required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(settings.name ?? ''),
      ),
    );
  }
}

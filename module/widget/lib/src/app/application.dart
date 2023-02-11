import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:theme/theme.dart';

class Application extends StatefulWidget {
  final String initRoute;
  final GenerateRoute onGenerateRoute;
  final GenerateRoute onUnknownRoute;

  const Application({
    Key? key,
    required this.initRoute,
    required this.onGenerateRoute,
    required this.onUnknownRoute,
  }) : super(key: key);

  @override
  State createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Route
      initialRoute: widget.initRoute,
      onGenerateRoute: widget.onGenerateRoute,
      onUnknownRoute: widget.onUnknownRoute,
      // Theme
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      // Debug
      showSemanticsDebugger: false,
    );
  }
}

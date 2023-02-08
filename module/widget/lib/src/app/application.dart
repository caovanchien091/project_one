import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:theme/theme.dart';

class Application extends StatefulWidget {
  final String initRoute;
  final GenerateRoute onGenerateRoute;

  const Application({
    Key? key,
    required this.initRoute,
    required this.onGenerateRoute,
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
      // Theme
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      // Debug
      showSemanticsDebugger: false,
    );
  }
}

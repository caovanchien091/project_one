import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:widget/src/app/controller/app_controller.dart';
import 'package:widget/src/app/inherit/app_inherit.dart';

import 'observer/router_observer.dart';

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
  final AppController controller = AppController();

  @override
  void initState() {
    super.initState();

    controller.notify = () {
      setState(() {});
    };
  }

  @override
  Widget build(BuildContext context) {
    return AppInherited(
      controller: controller,
      child: MaterialApp(
        // Route
        initialRoute: widget.initRoute,
        onGenerateRoute: widget.onGenerateRoute,
        // Theme
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.light,
        // Debug
        showSemanticsDebugger: false,
        // Observer
        navigatorObservers: [
          RouterObserver(
            controller: controller
          ),
        ],
      ),
    );
  }
}

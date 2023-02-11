import 'package:common/common.dart';
import 'package:project_one/src/screen/error/not_found_screen.dart';
import 'package:widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_one/src/register/app_dependency.dart';
import 'package:project_one/src/register/app_route.dart';

class AppBootstrap extends Bootstrap {
  static AppBootstrap I = AppBootstrap();

  @override
  List<RouteRegister> routes = [
    AppRoute(),
  ];

  @override
  List<DependencyRegister> dependencies = [
    AppDependency(),
  ];

  @override
  void complete(String initRoute, GenerateRoute onGenerate) {
    runApp(
      Application(
        initRoute: initRoute,
        onGenerateRoute: onGenerate,
        onUnknownRoute: (settings) {
          return PageRouteCustom(
            blocs: [],
            settings: settings,
            child: NotFoundScreen(
              settings: settings,
            ),
          );
        },
      ),
    );
  }
}

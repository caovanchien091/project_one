import 'package:common/common.dart';
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
  void complete(GenerateRoute onGenerate) {
    runApp(
      Application(
        initRoute: AppRoute.homeScreen,
        onGenerateRoute: onGenerate,
      ),
    );
  }
}

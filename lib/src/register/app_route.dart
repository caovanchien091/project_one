import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:project_one/src/screen/home/home_screen.dart';

class AppRoute extends RouteRegister {
  static const homeScreen = '/home';
  static const testScreen = '/testScreen';

  @override
  List<String> routes = [
    homeScreen,
    testScreen,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case homeScreen:
        return AppPageRoute(
          settings: settings,
          builder: (context) => const HomeScreen(),
        );
      case testScreen:
        return AppPageRoute(
          settings: settings,
          builder: (context) => Scaffold(
            body: Center(
              child: ElevatedButton(
                child: const Text("Bebebebebebeb"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        );
    }
  }
}

class AppPageRoute extends PageRoute {
  final WidgetBuilder builder;

  AppPageRoute({
    required RouteSettings settings,
    required this.builder,
  }) : super(settings: settings);

  @override
  Color? get barrierColor => Colors.lightBlue;

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => 'Haha';

  @override
  Widget buildPage(context, animation, secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    var begin = 0.0;
    var end = 1.0;
    var curve = Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return ScaleTransition(
      scale: animation.drive(tween),
      child: builder(context),
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(
        milliseconds: 500,
      );
}

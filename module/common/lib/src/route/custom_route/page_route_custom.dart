import 'package:common/common.dart';
import 'package:flutter/material.dart';

class PageRouteCustom extends PageRoute {
  final Widget child;
  final List<BlocBase> blocs;
  final PageRouteModel model = PageRouteModel();

  PageRouteCustom({
    required this.blocs,
    required this.child,
    required RouteSettings settings,
  }) : super(settings: settings);

  @override
  Widget buildPage(context, animation, secondaryAnimation) {
    return WillPopScope(
      onWillPop: model.willPop,
      child: child,
    );
  }

  @override
  Widget buildTransitions(context, animation, secondaryAnimation, child) {
    return SlideTransition(
      position: Tween<Offset>(
        end: Offset.zero,
        begin: const Offset(-1, 0),
      ).animate(animation),
      child: buildPage(
        context,
        animation,
        secondaryAnimation,
      ),
    );
  }

  @override
  bool get maintainState => true;

  @override
  String? get barrierLabel => null;

  @override
  Color? get barrierColor {
    var opacity = 0.4;
    return Colors.grey.withOpacity(
      opacity,
    );
  }

  @override
  Duration get transitionDuration {
    return const Duration(
      milliseconds: 200,
    );
  }
}

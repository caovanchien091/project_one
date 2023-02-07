import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPageRoute<T> extends PageRoute<T> {
  final List<Bloc>? blocs;
  final WidgetBuilder builder;

  AppPageRoute({
    this.blocs,
    required this.builder,
    required RouteSettings settings,
  }) : super(settings: settings);

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(context, animation, secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, animation, secondaryAnimation, child) {
    return Container(
      color: Colors.blue,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}

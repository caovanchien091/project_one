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
  bool get maintainState => true;

  @override
  Duration get transitionDuration {
    return const Duration(
      milliseconds: 0,
    );
  }
}

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPageRoute<T> extends MaterialPageRoute<T> {
  final List<Bloc>? blocs;

  AppPageRoute({
    this.blocs,
    required RouteSettings settings,
    required WidgetBuilder builder,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildContent(BuildContext context) {
    if (blocs.isEmpty) {
      return Scaffold(
        body: super.buildContent(
          context,
        ),
      );
    }

    return Scaffold(
      body: MultiBlocProvider(
        providers: blocs.mapTo(
          (item) => BlocProvider(
            create: (context) => item,
          ),
        ),
        child: super.buildContent(
          context,
        ),
      ),
    );
  }
}

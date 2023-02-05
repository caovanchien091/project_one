import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension RouteSettingsExtension on RouteSettings {
  PageRoute<T> build<T>({
    List<Bloc>? blocs,
    required WidgetBuilder builder,
  }) {
    return AppPageRoute(
      blocs: blocs,
      settings: this,
      builder: builder,
    );
  }
}

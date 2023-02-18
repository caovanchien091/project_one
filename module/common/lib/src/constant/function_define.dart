import 'package:common/common.dart';
import 'package:flutter/material.dart';

typedef Callback = Function();

typedef SingleParam<R, T> = R Function(T value);

typedef Predicate<T> = bool Function(T value);

typedef GenerateRoute = Route? Function(RouteSettings settings);

typedef InitRoute = String Function(Injection);

typedef RunApp = void Function(Widget app);
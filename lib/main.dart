import 'package:flutter/material.dart';
import 'package:project_one/src/bootstrap/app_bootstrap.dart';
import 'package:project_one/src/register/app_route.dart';

void main() => AppBootstrap.I.boot(
      runApp: runApp,
      initRoute: (injection) {
        return AppRoute.authSingIn;
      },
    );

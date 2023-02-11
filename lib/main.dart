import 'package:project_one/src/bootstrap/app_bootstrap.dart';
import 'package:project_one/src/register/app_route.dart';

void main() => AppBootstrap.I.boot(
      initRoute: (injection) {
        return AppRoute.authSingIn;
      },
    );

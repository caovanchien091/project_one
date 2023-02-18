import 'package:common/common.dart';

abstract class Bootstrap {
  abstract List<RouteRegister> routes;
  abstract List<DependencyRegister> dependencies;

  void complete(RunApp runApp, String initRoute, GenerateRoute onGenerate);

  void boot({
    required RunApp runApp,
    required InitRoute initRoute,
  }) async {
    await Cache.I.init();

    for (var dependency in dependencies) {
      await dependency.register(
        Injection.I,
      );
    }

    complete(runApp, initRoute(Injection.I), (settings) {
      for (var route in routes) {
        if (route.contains(settings)) {
          return route.register(
            settings,
            Injection.I,
          );
        }
      }
    });
  }
}

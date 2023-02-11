import 'package:common/common.dart';

abstract class Bootstrap {
  abstract List<RouteRegister> routes;
  abstract List<DependencyRegister> dependencies;

  void complete(String initRoute, GenerateRoute onGenerate);

  void boot({required InitRoute initRoute}) async {
    await Cache.I.init();

    for (var dependency in dependencies) {
      await dependency.register(
        Injection.I,
      );
    }

    complete(initRoute(Injection.I), (settings) {
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

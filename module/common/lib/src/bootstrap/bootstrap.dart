import 'package:common/common.dart';

abstract class Bootstrap {
  abstract List<RouteRegister> routes;
  abstract List<DependencyRegister> dependencies;

  void complete(GenerateRoute onGenerate);

  void boot() async {
    await Cache.I.init();

    for (var dependency in dependencies) {
      await dependency.register(
        Injection.I,
      );
    }

    complete((settings) {
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

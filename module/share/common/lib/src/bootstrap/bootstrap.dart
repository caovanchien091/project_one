import 'package:common/common.dart';
import 'package:core/core.dart';

abstract class Bootstrap {
  abstract List<RouteRegister> routes;
  abstract List<DependencyRegister> dependencies;

  void complete(GenerateRoute onGenerate);

  void boot() async {
    AppInjection injection = AppInjection.I;

    for (var dependency in dependencies) {
      await dependency.register(injection);
    }

    complete((settings) {
      for (var route in routes) {
        if (route.contains(settings)) {
          return route.register(
            settings,
            injection,
          );
        }
      }
    });
  }
}

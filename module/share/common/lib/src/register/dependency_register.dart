import 'package:core/core.dart';

abstract class DependencyRegister {
  Future<void> register(AppInjection injection);
}

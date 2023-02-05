import 'package:common/common.dart';
import 'package:project_one/src/screen/home/bloc/home_bloc.dart';

class AppDependency extends DependencyRegister {
  @override
  Future<void> register(injection) async {
    injection.factory<HomeBloc>(
      () => HomeBloc(),
    );
  }
}

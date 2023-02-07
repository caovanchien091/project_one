import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:project_one/src/screen/home/bloc/home_bloc.dart';
import 'package:project_one/src/screen/home/home_screen.dart';

class AppRoute extends RouteRegister {
  static const homeScreen = '/home';
  static const homeScreen1 = '/home1';
  static const homeScreen12 = '/home12';

  @override
  List<String> routes = [
    homeScreen,
    homeScreen1,
    homeScreen12,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case homeScreen1:
        return settings.build(
          blocs: [
            injection.get<HomeBloc>(),
          ],
          builder: (context) {
            return const HomeScreen();
          },
        );
      case homeScreen:
        return settings.build(
          blocs: [
            injection.get<HomeBloc>(),
          ],
          builder: (context) {
            return Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed(homeScreen12);
                  },
                  child: const Text("Chien"),
                ),
              ),
            );
          },
        );case homeScreen12:
        return settings.build(
          blocs: [
            injection.get<HomeBloc>(),
          ],
          builder: (context) {
            return Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: const Text("Back"),
                ),
              ),
            );
          },
        );
    }
  }
}

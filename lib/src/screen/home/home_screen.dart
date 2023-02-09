import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_one/src/register/app_route.dart';
import 'package:theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Text("Chien"),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoute.testScreen);
            },
          ),
        ),
      ),
    );
  }
}
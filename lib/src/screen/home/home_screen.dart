import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
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
    return const Scaffold(
      body: Center(
        child: CircleLoading(),
      ),
    );
  }
}

class CircleLoading extends StatefulWidget {
  const CircleLoading({
    Key? key,
  }) : super(key: key);

  @override
  State<CircleLoading> createState() => _CircleLoadingState();
}

class _CircleLoadingState extends State<CircleLoading> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(
              size: 100,
              iconData: Icons.add,
              color: Colors.blue,
              background: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}



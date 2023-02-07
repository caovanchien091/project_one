import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

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
      body: Center(
        child: Row(
          children: [AvatarCircle()],
        ),
      ),
    );
  }
}

class AvatarCircle extends StatelessWidget {
  final double size;

  const AvatarCircle({
    Key? key,
    this.size = 64,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
              )
            ],
          ),
        ),
        Container(
          width: size,
          height: size,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            '',
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}

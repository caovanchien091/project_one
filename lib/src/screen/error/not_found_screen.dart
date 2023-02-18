import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class NotFoundScreen extends StatelessWidget {
  final RouteSettings settings;

  const NotFoundScreen({
    Key? key,
    required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            NetworkImageCustom(
              url: 'https://pqnhat89.synology.me:56621/nettruyen/images/vo-luyen-dinh-phong/3064/1.jpg',
            )
          ],
        ),
      ),
    );
  }
}

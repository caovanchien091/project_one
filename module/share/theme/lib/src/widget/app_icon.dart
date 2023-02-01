import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final String? iconPath;
  final String? iconPackage;
  final double? size;
  final Color? iconColor;
  final IconData? iconData;

  const AppIcon({
    Key? key,
    this.size,
    this.iconColor,
    this.iconPath,
    this.iconPackage,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (iconData != null) {
      return Icon(
        iconData,
        size: size,
        color: iconColor,
      );
    }

    return ImageIcon(
      AssetImage(
        iconPath ?? '',
        package: iconPackage,
      ),
      size: size,
      color: iconColor,
    );
  }
}

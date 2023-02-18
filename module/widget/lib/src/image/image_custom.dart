import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

abstract class ImageCustom extends StatelessWidget {
  const ImageCustom({
    Key? key,
  }) : super(key: key);

  Widget buildImage(BuildContext context, Widget error);

  @override
  Widget build(BuildContext context) {
    return buildImage(
      context,
      buildError(context),
    );
  }

  Widget buildError(BuildContext context) {
    return Image.asset(
      IconPaths.errorImageNotFound,
      fit: BoxFit.scaleDown,
    );
  }
}

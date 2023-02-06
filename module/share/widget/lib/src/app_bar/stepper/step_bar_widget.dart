import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepBarWidget extends StatelessWidget {
  const StepBarWidget({
    Key? key,
    this.topSize = kToolbarHeight,
    this.bottomSize = 80,
    required this.controller,
  }) : super(key: key);

  final double topSize;
  final double bottomSize;
  final StepController controller;

  double get minExtent => bottomSize + screenPadding.top;

  double get maxExtent => topSize + bottomSize + screenPadding.top;

  double get bodyExtent => screenSize.height - minExtent;

  Size get screenSize => MediaQueryData.fromWindow(window).size;

  EdgeInsets get screenPadding => MediaQueryData.fromWindow(window).padding;

  ScrollController get stepController => controller.stepController;

  ScrollController get panelController => controller.panelController;

  @override
  Widget build(BuildContext context) {
    return StepInherited(
      controller: controller,
      child: CustomScrollView(
        controller: panelController,
        slivers: [
          StepHeaderWidget(
            delegate: StepHeaderDelegate(
              maxSize: maxExtent,
              minSize: minExtent,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              constraints: BoxConstraints(
                minHeight: bodyExtent,
              ),
            ),
          )
        ],
      ),
    );
  }
}

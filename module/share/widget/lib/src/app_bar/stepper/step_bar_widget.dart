import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepBarWidget extends StatelessWidget {
  const StepBarWidget({
    Key? key,
    this.child,
    this.topSize = 56,
    this.bottomSize = 80,
    required this.steps,
    required this.controller,
  }) : super(key: key);

  final double topSize;
  final double bottomSize;
  final Widget? child;
  final List<StepModel> steps;
  final StepController controller;

  @override
  Widget build(BuildContext context) {
    controller.steps = steps;

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
                maxHeight: bodyExtent,
              ),
              child: PageView(
                controller: panelController,
                // physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  // Todo: On scroll step to index
                  controller.listener(index)?.call(stepController);
                },
                children: List.generate(stepLength, (index) {
                  return Container(
                    color: Colors.primaries[index],
                    child: steps[index].panel,
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

extension _StepBarScreenSize on StepBarWidget {
  Size get screenSize => MediaQueryData.fromWindow(window).size;

  EdgeInsets get screenPadding => MediaQueryData.fromWindow(window).padding;
}

extension _StepBarCaculator on StepBarWidget {
  int get stepLength => controller.steps.length;

  double get minExtent => bottomSize + screenPadding.top;

  double get maxExtent => topSize + minExtent;

  double get bodyExtent => screenSize.height - minExtent;

  ScrollController get stepController => controller.stepController;

  PageController get panelController => controller.panelController;
}

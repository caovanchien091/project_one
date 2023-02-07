import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepHeaderWidget extends SliverPersistentHeader {
  const StepHeaderWidget({
    Key? key,
    required StepHeaderDelegate delegate,
  }) : super(key: key, delegate: delegate);
}

class StepHeaderDelegate extends SliverPersistentHeaderDelegate {
  StepHeaderDelegate({
    required this.minSize,
    required this.maxSize,
  });

  final double maxSize;
  final double minSize;
  late BuildContext context;

  @override
  double get maxExtent => maxSize;

  @override
  double get minExtent => minSize;

  @override
  bool shouldRebuild(oldDelegate) => true;

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    this.context = context;
    controller.shrinkOffset = shrinkOffset;

    return Container(
      decoration: BoxDecoration(
        color: parentData.backgroundColor,
        boxShadow: bottomShadow(),
      ),
      child: Stack(
        children: [
          _buildContainer(),
          _buildStep(),
          _buildAppBar(),
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Container();
  }

  Widget _buildStep() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        controller: stepController,
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: bottomHeight,
            minWidth: screenSize.width,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(stepLengthDouble, (index) {
              if (index % 2 == 0) {
                return const SizedBox(
                  width: 8,
                  height: 8,
                );
              } else {
                var stepIndex = (index - 1) ~/ 2;
                var step = steps[stepIndex];

                return StepItem(
                  step: step,
                  currentIndex: currentIndex,
                  index: stepIndex,
                  totalIndex: stepLength,
                  labelContent: step.label,
                  icon: step.icon ?? parentData.icon,
                  iconBuilder: parentData.iconBuilder,
                  titleBuilder: parentData.titleBuilder,
                  lineBuilder: parentData.lineBuilder,
                  completeColor: parentData.completeColor,
                  selectedColor: parentData.selectedColor,
                  remainColor: parentData.remainColor,
                  labelStyle: step.labelStyle ?? parentData.labelStyle,
                  lineWidth: parentData.lineWidth,
                  lineThickness: parentData.lineThickness,
                  iconSize: parentData.iconSize,
                  iconPadding: parentData.iconPadding,
                  space: parentData.space,
                );
              }
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Positioned(
      left: 0,
      right: 0,
      top: positionAppbarAlign,
      child: SizedBox(
        height: bodyExtendWithSafe,
        child: Opacity(
          opacity: bodyPercent,
          child: parentData.appBar,
        ),
      ),
    );
  }

  List<BoxShadow> bottomShadow() {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(
          0.05 * bodyPercentRevert,
        ),
        spreadRadius: 1,
        blurRadius: 1,
        offset: const Offset(0, 1),
      ),
    ];
  }
}

extension _StepHeaderScreenSize on StepHeaderDelegate {
  Size get screenSize => MediaQueryData.fromWindow(window).size;

  EdgeInsets get screenPadding => MediaQueryData.fromWindow(window).padding;
}

extension _StepHeaderCaculator on StepHeaderDelegate {
  int get currentIndex => controller.currentIndex;

  int get stepLength => controller.steps.length;

  int get stepLengthDouble => stepLength * 2 + 1;

  double get shrinkOffset => controller.shrinkOffset;

  double get bodyExtent => maxExtent - minExtent;

  double get bodyExtendWithSafe => bodyExtent + screenPadding.top;

  double get currentOffset => bodyExtent - shrinkOffset;

  double get bodyPercent => currentOffset / bodyExtent;

  double get bodyPercentRevert => 1 - bodyPercent;

  double get bottomHeight => minExtent - screenPadding.top;

  double get positionAppbarAlign => -(bodyExtent + (bodyExtent * -bodyPercent));

  List<StepModel> get steps => controller.steps;

  StepInherited get parentData => StepInherited.of(context);

  StepController get controller => StepInherited.of(context).controller;

  ScrollController get stepController => controller.stepController;
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/step_bar/model/step_model.dart';
import 'package:untitled1/step_bar/widget/step_item.dart';

import '../model/step_controller.dart';
import 'step_inherited.dart';

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
  final List<StepModel> steps = [
    StepModel(label: 'Haha'),
    StepModel(label: 'Haha'),
    StepModel(label: 'Haha'),
    StepModel(label: 'Haha'),
    StepModel(label: 'Haha'),
  ];

  double shrinkOffset = 0;

  late BuildContext context;

  double get bodyExtent => maxExtent - minExtent;

  double get bodyExtentSafeTop => bodyExtent + screenPadding.top;

  double get bodyPercent => (bodyExtent - shrinkOffset) / bodyExtent;

  double get bodyPercentRevert => 1 - bodyPercent;

  double get minExtendNoSafeTop => minExtent - screenPadding.top;

  double get bodyHeightWithPercent => bodyExtent + (bodyExtent * -bodyPercent);

  StepController get controller => StepInherited.of(context).controller;

  Size get screenSize => MediaQueryData.fromWindow(window).size;

  EdgeInsets get screenPadding => MediaQueryData.fromWindow(window).padding;

  @override
  double get maxExtent => maxSize;

  @override
  double get minExtent => minSize;

  @override
  bool shouldRebuild(oldDelegate) => true;

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    this.context = context;
    this.shrinkOffset = shrinkOffset;
    controller.steps = steps;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: minExtendNoSafeTop,
            minWidth: screenSize.width,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate((steps.length * 2) + 1, (index) {
              if (index % 2 == 0) {
                return const SizedBox(
                  width: 16,
                  height: 16,
                );
              } else {
                var indexReal = (index - 1) ~/ 2;

                return StepItem(
                  index: indexReal,
                  currentIndex: controller.currentIndex,
                  totalIndex: controller.totalIndex,
                  labelContent: steps[indexReal].label,
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
      top: -bodyHeightWithPercent,
      child: SizedBox(
        height: bodyExtentSafeTop,
        child: Opacity(
          opacity: bodyPercent,
          child: AppBar(
            title: const Text("Chien"),
            centerTitle: true,
          ),
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
        offset: const Offset(0, 3),
      ),
    ];
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepBarWidget extends StatefulWidget {
  const StepBarWidget({
    Key? key,
    this.icon,
    this.topSize = 56,
    this.bottomSize = 80,
    this.backgroundColor = Colors.white,
    this.completeColor = Colors.blue,
    this.selectedColor = Colors.blue,
    this.remainColor = Colors.grey,
    this.labelStyle = const TextStyle(),
    this.lineWidth = 32,
    this.lineThickness = 1,
    this.iconSize = 24,
    this.iconPadding = 0,
    this.space = 8,
    required this.steps,
    required this.controller,
    required this.appBar,
    this.iconBuilder,
    this.titleBuilder,
    this.lineBuilder,
    this.bottomBuilder,
  }) : super(key: key);

  final double topSize;
  final double bottomSize;
  final List<StepModel> steps;
  final StepController controller;
  final Widget? icon;
  final Color completeColor;
  final Color selectedColor;
  final Color remainColor;
  final Color backgroundColor;
  final TextStyle labelStyle;
  final double lineWidth;
  final double lineThickness;
  final double iconSize;
  final double iconPadding;
  final double space;
  final Widget appBar;
  final StepBuilder? iconBuilder;
  final StepBuilder? titleBuilder;
  final StepBuilder? lineBuilder;
  final StepBottomBuilder? bottomBuilder;

  @override
  State<StepBarWidget> createState() => _StepBarWidgetState();
}

class _StepBarWidgetState extends State<StepBarWidget> {
  @override
  Widget build(BuildContext context) {
    widget.controller.steps = widget.steps;

    return Scaffold(
      body: StepInherited(
        controller: widget.controller,
        iconBuilder: widget.iconBuilder,
        titleBuilder: widget.titleBuilder,
        lineBuilder: widget.lineBuilder,
        completeColor: widget.completeColor,
        selectedColor: widget.selectedColor,
        remainColor: widget.remainColor,
        backgroundColor: widget.backgroundColor,
        labelStyle: widget.labelStyle,
        lineWidth: widget.lineWidth,
        lineThickness: widget.lineThickness,
        iconSize: widget.iconSize,
        iconPadding: widget.iconPadding,
        space: widget.space,
        icon: widget.icon,
        appBar: widget.appBar,
        child: CustomScrollView(
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
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) => controller.listenerPageSwitch(
                    index: index,
                    state: setState,
                  ),
                  children: List.generate(stepLength, (index) {
                    return Container(
                      color: Colors.primaries[index],
                      child: widget.steps[index].panel,
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: widget.bottomBuilder?.call(
        controller.currentIndex,
        controller.steps.length,
      ),
    );
  }
}

extension _StepBarScreenSize on _StepBarWidgetState {
  Size get screenSize => MediaQueryData.fromWindow(window).size;

  EdgeInsets get screenPadding => MediaQueryData.fromWindow(window).padding;
}

extension _StepBarCaculator on _StepBarWidgetState {
  int get stepLength => widget.controller.steps.length;

  double get minExtent => widget.bottomSize + screenPadding.top;

  double get maxExtent => widget.topSize + minExtent;

  double get bodyExtent => screenSize.height - minExtent;

  StepController get controller => widget.controller;

  ScrollController get stepController => widget.controller.stepController;

  PageController get panelController => widget.controller.panelController;
}

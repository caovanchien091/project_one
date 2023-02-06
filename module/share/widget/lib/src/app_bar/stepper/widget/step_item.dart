import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

typedef StepBuilder = Widget Function(StepStatus);

class StepItem extends StatelessWidget {
  const StepItem({
    Key? key,
    this.icon,
    this.iconBuilder,
    this.titleBuilder,
    this.lineBuilder,
    required this.index,
    required this.currentIndex,
    required this.totalIndex,
    required this.labelContent,
    this.completeColor = Colors.blue,
    this.selectedColor = Colors.blue,
    this.remainColor = Colors.grey,
    this.labelStyle = const TextStyle(),
    this.lineWidth = 32,
    this.lineThickness = 1,
    this.iconSize = 24,
    this.iconPadding = 0,
    this.space = 8,
  }) : super(key: key);

  final int index;
  final int currentIndex;
  final int totalIndex;
  final Color completeColor;
  final Color selectedColor;
  final Color remainColor;
  final TextStyle labelStyle;
  final String labelContent;
  final double lineWidth;
  final double lineThickness;
  final Widget? icon;
  final double iconSize;
  final double iconPadding;
  final double space;
  final StepBuilder? iconBuilder;
  final StepBuilder? titleBuilder;
  final StepBuilder? lineBuilder;

  StepController controller(BuildContext context) {
    return StepInherited.of(context).controller;
  }

  @override
  Widget build(BuildContext context) {
    controller(context).addListener(
      index: index,
      listener: (controller) {
        print(index);
      },
    );

    return Row(
      children: [
        _buildIcon(),
        _buildSpacer(),
        _buildTitle(),
        _buildSpacer(),
        _buildLine(),
      ],
    );
  }

  Widget _buildSpacer() {
    return SizedBox(
      width: space,
      height: space,
    );
  }

  Widget _buildIcon() {
    if (iconBuilder != null) {
      return iconBuilder!(
        status(
          onSelect: StepStatus.select,
          onRemain: StepStatus.remain,
          onComplete: StepStatus.complete,
        ),
      );
    }

    return Container(
      width: iconSize,
      height: iconSize,
      padding: EdgeInsets.all(iconPadding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: status(
          onSelect: selectedColor,
          onRemain: remainColor,
          onComplete: completeColor,
        ),
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: icon,
      ),
    );
  }

  Widget _buildTitle() {
    if (titleBuilder != null) {
      return titleBuilder!(
        status(
          onSelect: StepStatus.select,
          onRemain: StepStatus.remain,
          onComplete: StepStatus.complete,
        ),
      );
    }

    return Text(
      labelContent,
      style: labelStyle.copyWith(
        color: status(
          onSelect: selectedColor,
          onRemain: remainColor,
          onComplete: completeColor,
        ),
      ),
    );
  }

  Widget _buildLine() {
    if (lineBuilder != null) {
      return lineBuilder!(
        status(
          onSelect: StepStatus.select,
          onRemain: StepStatus.remain,
          onComplete: StepStatus.complete,
        ),
      );
    }

    if (index == totalIndex - 1) {
      return const SizedBox();
    }

    return Container(
      width: lineWidth,
      height: lineThickness,
      color: status(
        onSelect: remainColor,
        onRemain: remainColor,
        onComplete: remainColor,
      ),
    );
  }

  T status<T>({
    T? onComplete,
    required T onSelect,
    required T onRemain,
  }) {
    if (index == currentIndex) {
      return onSelect;
    }

    if (index < currentIndex) {
      if (onComplete != null) {
        return onComplete;
      }
    }

    return onRemain;
  }
}

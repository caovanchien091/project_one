import 'package:flutter/material.dart';
import 'package:widget/widget.dart';



class StepItem extends StatelessWidget {
  const StepItem({
    Key? key,
    this.icon,
    this.iconBuilder,
    this.titleBuilder,
    this.lineBuilder,
    required this.step,
    required this.currentIndex,
    required this.index,
    required this.totalIndex,
    required this.labelContent,
    required this.completeColor,
    required this.selectedColor,
    required this.remainColor,
    required this.labelStyle,
    required this.lineWidth,
    required this.lineThickness,
    required this.iconSize,
    required this.iconPadding,
    required this.space,
  }) : super(key: key);

  final StepModel step;
  final int index;
  final int totalIndex;
  final int currentIndex;
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

  @override
  Widget build(BuildContext context) {
    step.listener = (controller) {
      var renderBox = findRender(context);
      if (renderBox != null) {
        controller.position.ensureVisible(
          renderBox,
          alignment: 0.5,
          curve: Curves.ease,
          duration: const Duration(
            milliseconds: 200,
          ),
        );
      }
    };

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
        child: AnimatedSwitcher(
          duration: const Duration(
            milliseconds: 200,
          ),
          child: status(
            onSelect: null,
            onRemain: null,
            onComplete: icon,
          ),
        ),
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

  RenderBox? findRender(BuildContext context) {
    return context.findRenderObject() as RenderBox?;
  }
}

import 'package:flutter/widgets.dart';

abstract class SnapZone {
  factory SnapZone(
    double extent, {
    double? distance,
    double? trailingDistance,
    double? leadingDistance,
  }) = _SnapPoint;

  factory SnapZone.avoidZone(
    double minExtent,
    double maxExtent, {
    double? delimiter,
  }) = _PreventSnapArea;

  bool shouldApplyFor(
    ScrollMetrics position,
    double proposedEnd,
  );

  double targetPixelsFor(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  );
}

class _SnapPoint implements SnapZone {
  final double extent;
  final double trailingExtent;
  final double leadingExtent;

  _SnapPoint(
    this.extent, {
    double? distance = 10,
    double? trailingDistance,
    double? leadingDistance,
  })  : leadingExtent = extent - (leadingDistance ?? distance ?? 0),
        trailingExtent = extent + (trailingDistance ?? distance ?? 0);

  @override
  bool shouldApplyFor(ScrollMetrics position, double proposedEnd) {
    return proposedEnd > leadingExtent && proposedEnd < trailingExtent;
  }

  @override
  double targetPixelsFor(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) {
    return extent;
  }
}

class _PreventSnapArea implements SnapZone {
  final double minExtent;
  final double maxExtent;
  final double delimiter;

  _PreventSnapArea(
    this.minExtent,
    this.maxExtent, {
    double? delimiter,
  }) : delimiter = delimiter ?? (minExtent + (maxExtent - minExtent) / 2);

  @override
  bool shouldApplyFor(ScrollMetrics position, double proposedEnd) {
    return proposedEnd > minExtent && proposedEnd < maxExtent;
  }

  @override
  double targetPixelsFor(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) {
    if (delimiter < proposedEnd) {
      return maxExtent;
    } else {
      return minExtent;
    }
  }
}

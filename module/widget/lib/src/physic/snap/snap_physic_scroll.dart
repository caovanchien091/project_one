import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:widget/widget.dart';

typedef SnapBuilder = List<SnapZone> Function();

abstract class SnapScrollPhysics extends ScrollPhysics {
  const factory SnapScrollPhysics({
    ScrollPhysics? parent,
    List<SnapZone> snaps,
  }) = RawSnapScrollPhysics;

  const factory SnapScrollPhysics.builder(
    SnapBuilder builder, {
    ScrollPhysics? parent,
  }) = BuilderSnapScrollPhysics;

  factory SnapScrollPhysics.between(
    double minExtent,
    double maxExtent, {
    double? delimiter,
    ScrollPhysics? parent,
  }) {
    return SnapScrollPhysics(
      parent: parent,
      snaps: [
        SnapZone.avoidZone(
          minExtent,
          maxExtent,
          delimiter: delimiter,
        ),
      ],
    );
  }
}

class RawSnapScrollPhysics extends BaseSnapScrollPhysics {
  const RawSnapScrollPhysics({
    ScrollPhysics? parent,
    this.snaps = const [],
  }) : super(parent: parent);

  @override
  final List<SnapZone> snaps;

  @override
  RawSnapScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return RawSnapScrollPhysics(
      parent: buildParent(ancestor),
      snaps: snaps,
    );
  }
}

class BuilderSnapScrollPhysics extends BaseSnapScrollPhysics {
  const BuilderSnapScrollPhysics(
    this.builder, {
    ScrollPhysics? parent,
  }) : super(parent: parent);

  final SnapBuilder builder;

  @override
  List<SnapZone> get snaps => builder();

  @override
  BuilderSnapScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return BuilderSnapScrollPhysics(
      builder,
      parent: buildParent(ancestor),
    );
  }
}

abstract class BaseSnapScrollPhysics extends ScrollPhysics implements SnapScrollPhysics {
  const BaseSnapScrollPhysics({
    ScrollPhysics? parent,
  }) : super(parent: parent);

  List<SnapZone> get snaps;

  double _getTargetPixels(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) {
    SnapZone? snap = getSnap(
      position,
      proposedEnd,
      tolerance,
      velocity,
    );
    if (snap == null) {
      return proposedEnd;
    }

    return snap.targetPixelsFor(
      position,
      proposedEnd,
      tolerance,
      velocity,
    );
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    final simulation = super.createBallisticSimulation(position, velocity);
    final proposedPixels = simulation?.x(double.infinity) ?? position.pixels;
    final double target = _getTargetPixels(
      position,
      proposedPixels,
      tolerance,
      velocity,
    );

    if ((target - proposedPixels).abs() > precisionErrorTolerance) {
      if (simulation is BouncingScrollSimulation) {
        return BouncingScrollSimulation(
          leadingExtent: math.min(target, position.pixels),
          trailingExtent: math.max(target, position.pixels),
          velocity: velocity,
          position: position.pixels,
          spring: spring,
          tolerance: tolerance,
        );
      }
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return simulation;
  }

  @override
  bool get allowImplicitScrolling => false;

  SnapZone? getSnap(
    ScrollMetrics position,
    double proposedEnd,
    Tolerance tolerance,
    double velocity,
  ) {
    for (final snap in snaps) {
      if (snap.shouldApplyFor(position, proposedEnd)) {
        return snap;
      }
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizeRenderWidget extends RenderObjectWidget {
  const SizeRenderWidget({
    super.key,
    required this.child,
    required this.builder,
  });

  final Widget child;
  final Widget Function(Widget child, Size size) builder;

  @override
  RenderObject createRenderObject(BuildContext context) => SizeRenderObject();

  @override
  RenderObjectElement createElement() => SizeRenderElement(this);
}

class SizeRenderObject extends RenderBox with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  LayoutCallback<Constraints>? _callbackPrepare;
  LayoutCallback<Constraints>? _callbackFinal;

  @override
  void performLayout() {
    final BoxConstraints constraints = this.constraints;
    performPrepare();
    if (child != null) {
      child!.layout(constraints, parentUsesSize: true);
      size = child!.size;
      performFinal();
      child!.layout(constraints, parentUsesSize: true);
      size = child!.size;
    } else {
      size = constraints.biggest;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      context.paintChild(child!, offset);
    }
  }

  void updateCallbacks({
    LayoutCallback<Constraints>? callbackPrepare,
    LayoutCallback<Constraints>? callbackFinal,
  }) {
    _callbackPrepare = callbackPrepare;
    _callbackFinal = callbackFinal;
    markNeedsLayout();
  }

  void markNeedsBuild() {
    markNeedsLayout();
  }

  void performPrepare() {
    invokeLayoutCallback(_callbackPrepare!);
  }

  void performFinal() {
    invokeLayoutCallback(_callbackFinal!);
  }
}

class SizeRenderElement extends RenderObjectElement {
  SizeRenderElement(
    SizeRenderWidget super.widget,
  );

  Element? _child;

  @override
  SizeRenderObject get renderObject => super.renderObject as SizeRenderObject;

  @override
  SizeRenderWidget get widget => super.widget as SizeRenderWidget;

  void _prepareLayout(Constraints constraints) {
    @pragma('vm:notify-debugger-on-exception')
    void layoutCallback() {
      _child = updateChild(_child, widget.child, null);
      _child = updateChild(null, widget.child, slot);
    }

    owner!.buildScope(this, layoutCallback);
  }

  void _finalLayout(Constraints constraints) {
    @pragma('vm:notify-debugger-on-exception')
    void layoutCallback() {
      final built = widget.builder(widget.child, renderObject.size);
      _child = updateChild(_child, built, null);
      _child = updateChild(null, built, slot);
    }

    owner!.buildScope(this, layoutCallback);
  }

  @override
  void visitChildren(ElementVisitor visitor) {
    if (_child != null) {
      visitor(_child!);
    }
  }

  @override
  void forgetChild(Element child) {
    assert(child == _child);
    _child = null;
    super.forgetChild(child);
  }

  @override
  void mount(Element? parent, Object? newSlot) {
    super.mount(parent, newSlot);
    renderObject.updateCallbacks(
      callbackPrepare: _prepareLayout,
      callbackFinal: _finalLayout,
    );
  }

  @override
  void unmount() {
    renderObject.updateCallbacks(
      callbackPrepare: null,
      callbackFinal: null,
    );
    super.unmount();
  }

  @override
  void performRebuild() {
    renderObject.markNeedsBuild();
    super.performRebuild();
  }

  @override
  void update(SizeRenderWidget newWidget) {
    super.update(newWidget);
    assert(widget == newWidget);
    renderObject.updateCallbacks(
      callbackPrepare: _prepareLayout,
      callbackFinal: _finalLayout,
    );
    renderObject.markNeedsBuild();
  }

  @override
  void insertRenderObjectChild(RenderObject child, Object? slot) {
    final renderObject = this.renderObject;
    assert(slot == null);
    assert(renderObject.debugValidateChild(child));
    renderObject.child = child as RenderBox?;
    assert(renderObject == this.renderObject);
  }

  @override
  void moveRenderObjectChild(
    RenderObject child,
    Object? oldSlot,
    Object? newSlot,
  ) {
    assert(false);
  }

  @override
  void removeRenderObjectChild(RenderObject child, Object? slot) {
    final renderObject = this.renderObject;
    assert(slot == null);
    assert(renderObject.child == child);
    renderObject.child = null;
    assert(renderObject == this.renderObject);
  }
}

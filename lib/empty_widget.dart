import 'package:flutter/material.dart';

class EmptyWidget extends Widget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Element createElement() => _EmptyWidgetElement(this);
}

class _EmptyWidgetElement extends Element {
  _EmptyWidgetElement(Widget widget) : super(widget);

  @override
  bool get debugDoingBuild => false;

  @override
  void performRebuild() {}
}

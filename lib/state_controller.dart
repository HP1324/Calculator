import 'package:flutter/material.dart';

class StateController extends InheritedWidget {
  const StateController(
      {super.key,
      required super.child,
      required this.stateWidget,
      required this.controller});
  final _ControlState stateWidget;
  final controller;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static _ControlState of(BuildContext context) {
    var state = context
        .dependOnInheritedWidgetOfExactType<StateController>()!
        .stateWidget;
    return state;
  }
}

class Control extends StatefulWidget {
  const Control({super.key, required this.child});
  final Widget child;
  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  var controller = TextEditingController();
  int cursor = 0;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        cursor = controller.selection.baseOffset;
      });
    });
  }

  void insert(String text) {
    int cursorMediator = cursor;
    var txt = controller.text;
    txt = txt.substring(0, cursor) + text + txt.substring(cursor);
    controller.text = txt;
    controller.selection = TextSelection.collapsed(offset: cursorMediator + 1);
  }

  @override
  Widget build(BuildContext context) {
    return StateController(
      stateWidget: this,
      child: widget.child,
      controller: controller,
    );
  }
}

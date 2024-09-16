import 'package:calculator/state_controller.dart';
import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = StateController.of(context);
    return Container(
      alignment: Alignment.bottomCenter,
      height: 150,
      width: double.infinity,
      color: Colors.green.shade50,
      child: TextField(
        controller: provider.controller,
        decoration: null,
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.right,
      ),
    );
  }
}

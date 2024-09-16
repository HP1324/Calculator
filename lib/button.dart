import 'package:calculator/state_controller.dart';
import 'package:calculator/utils.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    var provider = StateController.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          if (text == 'AC')
            provider.controller.clear();
          else if (text == '=') {
           double result =  toMathExpression(provider.controller.text);
           provider.controller.text = result.toString();
           provider.cursor = result.toString().length;
          } else
            provider.insert(text);
        },
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(6),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}

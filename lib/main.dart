import 'package:calculator/Home.dart';
import 'package:calculator/state_controller.dart';
import 'package:flutter/material.dart';

void main() => runApp(Control(child: Calculator()));

class Calculator extends StatelessWidget {
  const Calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff648767)),
         primaryColor:Color(0xff648767),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff648767)),
      ),
      home: Home(),
    );
  }
}

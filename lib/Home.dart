import 'package:calculator/button.dart';
import 'package:calculator/field.dart';
import 'package:calculator/state_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var provider = StateController.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Calculator',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          Expanded(child: Field()),
          RowOne(),
          RowTwo(),
          RowThree(),
          RowFour()
        ],
      ),
    );
  }
  Widget RowOne(){
    return Row(
      children: [
        Button(text: '7',),
        Button(text: '8',),
        Button(text: '9',),
        Button(text: '+',),
      ],
    );
  }
  Widget RowTwo(){
    return Row(
      children: [
        Button(text: '4',),
        Button(text: '5',),
        Button(text: '6',),
        Button(text: '-',),
      ],
    );
  }
  Widget RowThree(){
    return Row(
      children: [
        Button(text: '1',),
        Button(text: '2',),
        Button(text: '3',),
        Button(text: '/',),
      ],
    );
  }
  Widget RowFour(){
    return Row(
      children: [
        Button(text: 'AC',),
        Button(text: '0',),
        Button(text: '=',),
        Button(text: '*',),
      ],
    );
  }
  // void insertNumber(String num){
  //     int cursorMediator = cursor;
  //     var txt = controller.text;
  //     txt = txt.substring(0,cursor) + num + txt.substring(cursor);
  //     controller.text = txt;
  //     controller.selection = TextSelection.collapsed(offset: cursorMediator + 1);
  // }
  // void insertOperator(String op){
  //   int cursorMediator = cursor;
  //   var holder = controller.text;
  //   if(holder.isNotEmpty && holder[cursorMediator] != op && holder[cursorMediator + 1] != op){
  //     var txt = controller.text;
  //     txt = txt.substring(0,cursor) + op + txt.substring(cursor);
  //     controller.text = txt;
  //     controller.selection = TextSelection.collapsed(offset: cursorMediator + 1);
  //   }
  // }
}

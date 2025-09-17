import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:start_app/calculatorScreen/clacButton.dart';
import 'package:start_app/calculatorScreen/buttonModel.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String displayResult = "";
  String lhs = "";
  String rhs = "";
  String op = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator", style: TextStyle(fontSize: 32)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              color: Colors.white,
              width: double.infinity,
              child: Text(displayResult, style: TextStyle(fontSize: 45)),
            ),
          ),

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClacButton(label: "7", onClick: onClicked),
                ClacButton(label: "8", onClick: onClicked),
                ClacButton(label: "9", onClick: onClicked),
                ClacButton(label: "x", onClick: onClickedOperator),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClacButton(label: "4", onClick: onClicked),
                ClacButton(label: "5", onClick: onClicked),
                ClacButton(label: "6", onClick: onClicked),
                ClacButton(label: "-", onClick: onClickedOperator),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClacButton(label: "1", onClick: onClicked),
                ClacButton(label: "2", onClick: onClicked),
                ClacButton(label: "3", onClick: onClicked),
                ClacButton(label: "+", onClick: onClickedOperator),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClacButton(label: "Del", onClick: onClicked),
                ClacButton(label: "0", onClick: onClicked),
                ClacButton(label: "/", onClick: onClickedOperator),
                ClacButton(label: "=", onClick: onClickedEqual),
              ],
            ),
          ),
        ],
      ),
    );
  }



  onClicked(number) {
    if(op.isEmpty){
      displayResult="";
    }
    displayResult += number;
    setState(() {});
  }
  //lhs (op) rhs  =
  onClickedOperator(operator) {
    if (lhs.isEmpty) {
      lhs = displayResult;

    } else {
      lhs = clickCalculat(lhs, op, displayResult);

    }
    op = operator;
    displayResult = "";
    setState(() {});
  }
  onClickedEqual(equal) {
    String finalReslut = clickCalculat(lhs, op, displayResult);
    displayResult=finalReslut;
    op="";
    lhs="";
    setState(() {});
  }
  String clickCalculat(String lhs,String op, String rhs ) {
    double LHS = double.parse(lhs);
    double RHS = double.parse(rhs);

    if (op == "+") {

      double res= LHS + RHS;
      return res.toString();
    }
    else if (op == "-") {
      double res= LHS - RHS;
      return res.toString();
    }
    else if (op == "x") {
      double res= LHS * RHS;
      return res.toString();
    }
    else if (op == "/") {
      double res= LHS / RHS;
      return res.toString();
    }
    return  ("").toString();


  }
}

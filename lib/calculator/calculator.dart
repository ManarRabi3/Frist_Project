import 'package:flutter/material.dart';
import 'package:flutter_projects/calculator/calc_btn.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName = "CalculatorScreen";

  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resultScreen = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Calculator",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      resultScreen,
                      style: TextStyle(color: Colors.black, fontSize: 38),
                    ))),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcBtn(lable: "9", onClick: onBtnClick),
                  CalcBtn(lable: "8", onClick: onBtnClick),
                  CalcBtn(lable: "7", onClick: onBtnClick),
                  CalcBtn(lable: "/", onClick: onOperatorClick),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcBtn(lable: "6", onClick: onBtnClick),
                  CalcBtn(lable: "5", onClick: onBtnClick),
                  CalcBtn(lable: "4", onClick: onBtnClick),
                  CalcBtn(lable: "*", onClick: onOperatorClick),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcBtn(lable: "3", onClick: onBtnClick),
                  CalcBtn(lable: "2", onClick: onBtnClick),
                  CalcBtn(lable: "1", onClick: onBtnClick),
                  CalcBtn(lable: "-", onClick: onOperatorClick),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalcBtn(lable: "0", onClick: onBtnClick),
                  CalcBtn(lable: ".", onClick: onBtnClick),
                  CalcBtn(lable: "=", onClick:  onEqualClick),
                  CalcBtn(lable: "+", onClick: onOperatorClick),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onBtnClick(lable) {
    if(op =='='){
      resultScreen ="";
     op ="";
     //LHS ='';
    }
    resultScreen += lable;
    setState(() {});
  }

  String calcualte(String lhs, String op, String rhs) {
    double LHS = double.parse(lhs);
    double RHS = double.parse(rhs);
    if (op == '+') {
      double res = LHS + RHS;
      return res.toString();
    } else if (op == '-') {
      double res = LHS - RHS;
      return res.toString();
    } else if (op == '*') {
      double res = LHS * RHS;
      return res.toString();
    } else if (op == '/') {
      double res = LHS / RHS;
      return res.toString();
    } else {
      return '';
    }
  }

  String op = "";
  String LHS = "";

  onOperatorClick(lable) {
    if (op.isEmpty) {
      LHS = resultScreen;
    } else {
      LHS = calcualte(LHS, op, resultScreen);
    }

    op = lable;
    resultScreen = "";
    setState(() {});

    print(LHS);
  }

  onEqualClick(lable) {

    resultScreen = calcualte(LHS, op, resultScreen);
    op=lable;
    setState(() {});
  }
}

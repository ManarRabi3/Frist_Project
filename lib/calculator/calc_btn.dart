import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  String lable;
  Function onClick;

  CalcBtn({required this.lable,required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {
        onClick(lable);
      },
      child: Text(lable, style: TextStyle(fontSize: 39, color: Colors.white)),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
    ));
  }
}

//import 'dart:ffi';

import 'package:flutter/material.dart';

class Bordbtn extends StatelessWidget {
  String label;
  int index;
  Function onClick;
   Bordbtn({required this.label,required this.index,required this.onClick,super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          onClick(index);
        },
        child: Text(label,
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            backgroundColor: Colors.cyan),
      ),
    );
  }
}

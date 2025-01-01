import 'package:flutter/material.dart';
import 'package:flutter_projects/calculator/calculator.dart';
import 'package:flutter_projects/home.dart';
import 'package:flutter_projects/login_Screen.dart';
import 'package:flutter_projects/slider.dart';
import 'package:flutter_projects/tic_tok/login.dart';
import 'package:flutter_projects/tic_tok/xo%20game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:Login.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CalculatorScreen.routeName: (context) => CalculatorScreen(),
        SliderScreen.routeName: (context) => SliderScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        Login.routeName: (context) => Login(),
        XoGame.routeName: (context) => XoGame(),

      },
    );
  }
}

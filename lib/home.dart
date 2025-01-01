import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Route"),
          centerTitle: true,
          leading: Icon(Icons.add),
        ),
        body: Column(
          children: [
            Image.asset("assets/images/car 1.jpg"),
          ],
        ),
      ),
    );
  }
}

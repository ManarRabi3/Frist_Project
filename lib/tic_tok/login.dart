import 'package:flutter/material.dart';
import 'package:flutter_projects/tic_tok/players_model.dart';
import 'package:flutter_projects/tic_tok/xo%20game.dart';

class Login extends StatelessWidget {
  static const String routeName = "Login";

  Login({super.key});

  String player1 = "";
  String player2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                player1 = value;
              },
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                label: Text("player One"),
                enabled: true,
                fillColor: Colors.cyan,
                filled: true,
                focusColor: Colors.red,
                suffixText: ".com",
                prefixIcon: Icon(Icons.lock_open),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(18)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(18)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(18))),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (value) {
                player2 = value;
              },
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  label: Text("player One"),
                  enabled: true,
                  fillColor: Colors.cyan,
                  filled: true,
                  focusColor: Colors.red,
                  suffixText: ".com",
                  prefixIcon: Icon(Icons.lock_open),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                      borderRadius: BorderRadius.circular(18)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                      borderRadius: BorderRadius.circular(18)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                      borderRadius: BorderRadius.circular(18))),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,XoGame.routeName,arguments:PlayersModel(player1, player2) );
            }, child: Text("Let s Go"))
         
         
          ],
        ),
      ),
    );
  }
}

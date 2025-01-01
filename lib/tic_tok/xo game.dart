import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_projects/tic_tok/players_model.dart';
import 'custom_Btn.dart';

class XoGame extends StatefulWidget {
  static const String routeName = "xo";

  XoGame({super.key});

  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  List<String> gameBoard = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  int score1 = 0;
  int score2 = 0;

  @override
  Widget build(BuildContext context) {
    PlayersModel?model=ModalRoute.of(context)?.settings.arguments as PlayersModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          "X-O",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                     model.name1,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      "$score1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      model.name2,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      "$score2",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Bordbtn(
                  label: gameBoard[0],
                  index: 0,
                  onClick: onBtnClick,
                ),
                Bordbtn(
                  label: gameBoard[1],
                  index: 1,
                  onClick: onBtnClick,
                ),
                Bordbtn(
                  label: gameBoard[2],
                  index: 2,
                  onClick: onBtnClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Bordbtn(
                  label: gameBoard[3],
                  index: 3,
                  onClick: onBtnClick,
                ),
                Bordbtn(
                  label: gameBoard[4],
                  index: 4,
                  onClick: onBtnClick,
                ),
                Bordbtn(
                  label: gameBoard[5],
                  index: 5,
                  onClick: onBtnClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Bordbtn(
                  label: gameBoard[6],
                  index: 6,
                  onClick: onBtnClick,
                ),
                Bordbtn(
                  label: gameBoard[7],
                  index: 7,
                  onClick: onBtnClick,
                ),
                Bordbtn(
                  label: gameBoard[8],
                  index: 8,
                  onClick: onBtnClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;

  checkWin(String symbol) {
    //chick row
    for (int i = 0; i < 9; i += 3) {
      if (gameBoard[i] == symbol &&
          gameBoard[i + 1] == symbol &&
          gameBoard[i + 2] == symbol) {
        return true;
      }
    }

    //chick colum
    for (int i = 0; i < 3; i++) {
      if (gameBoard[i] == symbol &&
          gameBoard[i + 3] == symbol &&
          gameBoard[i + 6] == symbol) {
        return true;
      }
    }
    //////////////
    if (gameBoard[0] == symbol &&
        gameBoard[4] == symbol &&
        gameBoard[8] == symbol) {
      return true;
    }
    if (gameBoard[2] == symbol &&
        gameBoard[4] == symbol &&
        gameBoard[6] == symbol) {
      return true;
    }
    return false;
  }

  reset() {
    gameBoard = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    counter = 0;
  }

  onBtnClick(index) {
    if (counter.isEven) {
      gameBoard[index] = "x";
      score1 += 2;
      bool win = checkWin("x");
      if (win) {
        score1 += 10;
        reset();
      } else {
        counter++;
      }
    } else {
      gameBoard[index] = "o";
      score2 += 2;
      bool win = checkWin("o");
      if (win) {
        score2 += 10;
        reset();
      } else {
        counter++;
      }
    }

    if (counter == 9) {
      reset();
    }
    setState(() {});
  }
}

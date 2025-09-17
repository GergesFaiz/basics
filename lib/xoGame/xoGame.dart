import 'package:flutter/material.dart';
import 'package:start_app/xoGame/BoardButton.dart';
import 'package:start_app/xoGame/PlayersModel.dart';

class XoGame extends StatefulWidget {
  static const String routeName="Login";
  XoGame({super.key});

  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  int score1 = 0;
  int counter = 1;
  int score2 = 0;

  List<String> board = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    PlayersModel model=ModalRoute.of(context)!.settings.arguments as PlayersModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "XoGame",
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(model.player1, style: TextStyle(fontSize: 26)),
                    Text("$score1", style: TextStyle(fontSize: 22)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(model.player2, style: TextStyle(fontSize: 26)),
                    Text("$score2", style: TextStyle(fontSize: 22)),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Boardbutton(label: board[0], onClick: onClicked, index: 0),
                Boardbutton(label: board[1], onClick: onClicked, index: 1),
                Boardbutton(label: board[2], onClick: onClicked, index: 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Boardbutton(label: board[3], onClick: onClicked, index: 3),
                Boardbutton(label: board[4], onClick: onClicked, index: 4),
                Boardbutton(label: board[5], onClick: onClicked, index: 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Boardbutton(label: board[6], onClick: onClicked, index: 6),
                Boardbutton(label: board[7], onClick: onClicked, index: 7),
                Boardbutton(label: board[8], onClick: onClicked, index: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onClicked(int index) {
    if (board[index].isNotEmpty) {
      return;
    }
    if (counter.isOdd) {
      board[index] = "x";
      bool win = chackWin("x");
      if(win==true){
        score1+=10;resetBoard();}
    } else {
      board[index] = "o";
      bool win = chackWin("o");
      if(win==true){score2+=10;resetBoard();}
    }
    counter++;
    setState(() {});
  }

  resetBoard(){
    board=[
      "","","",
      "","","",
      "","",""
    ];
  }
  bool chackWin(String symbol) {
    //row
    for (int i = 0; i < 9; i+=3) {
      if (symbol == board[i] &&
          symbol == board[i + 1] &&
          symbol == board[i + 2]) {
        return true;
      }
    }
    //column
    for (int i = 0; i < 3; i++) {
      if (symbol == board[0] && symbol == board[i+3] && symbol == board[i+6]) {
        return true;
      }
    }
    if (symbol == board[0] && symbol == board[4] && symbol == board[8]) {
      return true;
    }
    if (symbol == board[2] && symbol == board[4] && symbol == board[6]) {
      return true;
    }

      return false;
  }
}

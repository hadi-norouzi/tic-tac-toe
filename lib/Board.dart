import 'dart:async';
import 'package:TicTacToe/utils/util.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/BoardValues.dart';
import 'model/ScoreBoardValues.dart';

class Board extends StatelessWidget{
  final dynamic parentClass;
  Board(this.parentClass);
  var scoreBoardValues;
  var boardValues;
  var context;
  AnimationController animationController;
  Animation<double> animation;
  // @override
  // void initState() {
  //   super.initState();
  //   animationController = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 2),
  //     value: .01,
  //   );
  //   animation =
  //       CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
  //   animationController.forward();
  // }

  // @override
  // void dispose() {
  //   animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    scoreBoardValues = Provider.of<ScoreBoardValues>(context);
    boardValues = Provider.of<BoardValues>(context);
    this.context = context;
    print(MediaQuery.of(context).size.width);

    return Container(
      color: Color(0xFF3E7D91),
      child: boardValues.won
          ? Opacity(
              opacity: boardValues.won ? 1 : 0.0,
              child: FlareActor("asset/celebration.flr",
                  fit: BoxFit.contain,
                  animation: boardValues.won ? "Untitled" : null,
                  alignment: Alignment.center,
                  controller: parentClass),
            )
          : Center(
              child: Container(
                width: MediaQuery.of(context).size.width < 600
                    ? MediaQuery.of(context).size.width / 1.3
                    : 400,
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          block(boardValues.won, 0, context),
                          sizedBox(),
                          block(boardValues.won, 1, context),
                          sizedBox(),
                          block(boardValues.won, 2, context),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xFF2C6171),
                      height: 10,
                      thickness: 5,
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          block(boardValues.won, 3, context),
                          sizedBox(),
                          block(boardValues.won, 4, context),
                          sizedBox(),
                          block(boardValues.won, 5, context),
                        ],
                      ),
                    ),
                    Divider(
                      color: Color(0xFF2C6171),
                      height: 10,
                      thickness: 5,
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          block(boardValues.won, 6, context),
                          sizedBox(),
                          block(boardValues.won, 7, context),
                          sizedBox(),
                          block(boardValues.won, 8, context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  void winner() {
    int win = checkWin(boardValues.players);
    if (win != 3) {
      print(win);
      boardValues.won = true;
      if (win == 1) {
        scoreBoardValues
          ..increaseO()
          ..increaseGame();
        showDialog(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: Text('winner'),
            content: Text('O'),
          ),
        );
      } else {
        scoreBoardValues
          ..increaseX()
          ..increaseGame();
        showDialog(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: Text('winner'),
            content: Text('X'),
          ),
        );
      }
      Timer(
        Duration(seconds: 3),
        () {
          boardValues.resetBoard();
          boardValues.won = false;
        },
      );
      return;
    }
  }

  Widget block(bool player, int i, context) {
    return Consumer<BoardValues>(
      builder: (BuildContext _, BoardValues value, Widget child) {
        return Expanded(
          child: Center(
            child: IconButton(
              color: determineColorIcon(value.players, i),
              iconSize: MediaQuery.of(context).size.width < 1000
                  ? MediaQuery.of(context).size.width / 5
                  : 100,
              icon: Icon(whichPlayer(i, value.players)),
              onPressed: () {
                // animationController.forward();
                value.setIcon(i);

                winner();
              },
            ),
          ),
        );
      },
    );
  }
}

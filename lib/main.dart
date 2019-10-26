import 'dart:async';

import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:tic_toc_toe/ResetButton.dart';
import 'package:tic_toc_toe/ScoreBoard.dart';

main() => runApp(MyApp());

List<int> boolPlayer = [0, 0, 0, 0, 0, 0, 0, 0, 0];

bool player = true;
// true for first player and have O
// false for second player and have X

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with FlareController {
  int games = 0;
  int XScore = 0;
  int OScore = 0;
  String winner = 'TicTocToe';
  bool won = false;
  resetButtonOnPress() {
    setState(() {
      isEmptyBoard() ? null : games++;
      for (int i = 0; i < boolPlayer.length; i++) {
        boolPlayer[i] = 0;
      }
      SystemSound.play(SystemSoundType.click);
      won = false;
      isActive.value = false;
    });
  }

  IconData whichPlayer(int i) {
    if (boolPlayer[i] == 1) {
      return Icons.panorama_fish_eye;
    } else if (boolPlayer[i] == 2) {
      return Icons.close;
    }
    return null;
  }

  bool isEmptyBoard() {
    for (int i = 0; i < boolPlayer.length; i++) {
      // print('$boolPlayer this in loop');
      if (boolPlayer[i] != 0) {
        return false;
      }
    }
    return true;
  }

  Color determineColorIcon(int situation) {
    if (boolPlayer[situation] == 1)
      return Colors.orange;
    else if (boolPlayer[situation] == 2) return Colors.yellow;

    return Color(0xFF2C6171);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomSheet: ,
        appBar: AppBar(
          backgroundColor: Color(0xFF2C6171),
          title: Text(
            'TicTocToe',
            style: TextStyle(fontSize: 25, fontFamily: 'tahoma'),
          ),
          actions: <Widget>[
            ResetButton(resetButtonOnPress),
          ],
        ),
        body: Container(
          color: Color(0xFF3E7D91),
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: won ? 1 : 0.1,
                child: FlareActor("asset/celebration.flr", // You can find the
                    // example
                    // project
                    // here: https://www.2dimensions.com/a/castor/files/flare/change-color-example
                    fit: BoxFit.contain,
                    animation: won ? "Untitled" : null,
                    alignment: Alignment.center,
                    controller: this),
              ),
              Center(
                child: Container(
                  width: 350,
                  alignment: Alignment.center,
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(0),
                                iconSize: 70,
                                icon: Icon(whichPlayer(0)),
                                onPressed: () {
                                  determineUser(player, 0);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              child: Container(
                                color: Color(0xFF2C6171),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(1),
                                iconSize: 70,
                                icon: Icon(whichPlayer(1)),
                                onPressed: () {
                                  determineUser(player, 1);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              child: Container(
                                color: Color(0xFF2C6171),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(2),
                                iconSize: 70,
                                icon: Icon(whichPlayer(2)),
                                onPressed: () {
                                  determineUser(player, 2);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(width: 3),
                      Divider(
                        color: Color(0xFF2C6171),
                        height: 10,
                        thickness: 5,
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(3),
                                iconSize: 70,
                                icon: Icon(whichPlayer(3)),
                                onPressed: () {
                                  determineUser(player, 3);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              child: Container(
                                color: Color(0xFF2C6171),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(4),
                                iconSize: 70,
                                icon: Icon(whichPlayer(4)),
                                onPressed: () {
                                  determineUser(player, 4);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              child: Container(
                                color: Color(0xFF2C6171),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(5),
                                iconSize: 70,
                                icon: Icon(whichPlayer(5)),
                                onPressed: () {
                                  determineUser(player, 5);
                                },
                              ),
                            ),
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
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(6),
                                iconSize: 70,
                                icon: Icon(whichPlayer(6)),
                                onPressed: () {
                                  determineUser(player, 6);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              child: Container(
                                color: Color(0xFF2C6171),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(7),
                                iconSize: 70,
                                icon: Icon(whichPlayer(7)),
                                onPressed: () {
                                  determineUser(player, 7);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              child: Container(
                                color: Color(0xFF2C6171),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                color: determineColorIcon(8),
                                iconSize: 70,
                                icon: Icon(whichPlayer(8)),
                                onPressed: () {
                                  determineUser(player, 8);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ScoreBoard(OScore, XScore, games, winner),
      ),
    );
  }

  void determineUser(bool user, int situation) {
    if (boolPlayer[situation] == 0) {
      if (user) {
        setState(() {
          boolPlayer[situation] = 1;
          player = !player;
        });
      } else {
        setState(() {
          boolPlayer[situation] = 2;
          player = !player;
        });
      }
    }
    checkWin();
  }

  checkWin() {
    if ((boolPlayer[0] == 1 && boolPlayer[1] == 1 && boolPlayer[2] == 1) ||
        (boolPlayer[3] == 1 && boolPlayer[4] == 1 && boolPlayer[5] == 1) ||
        (boolPlayer[6] == 1 && boolPlayer[7] == 1 && boolPlayer[8] == 1) ||
        (boolPlayer[0] == 1 && boolPlayer[3] == 1 && boolPlayer[6] == 1) ||
        (boolPlayer[1] == 1 && boolPlayer[4] == 1 && boolPlayer[7] == 1) ||
        (boolPlayer[2] == 1 && boolPlayer[5] == 1 && boolPlayer[8] == 1) ||
        (boolPlayer[0] == 1 && boolPlayer[4] == 1 && boolPlayer[8] == 1) ||
        (boolPlayer[2] == 1 && boolPlayer[4] == 1 && boolPlayer[6] == 1)) {
      // print('player O win');
      //show flare and hide

      setState(() {
        winner = 'O Win';
        won = true;
        isActive.value = true;
      });
      Timer(Duration(seconds: 3), () {
        resetButtonOnPress();
        OScore++;
        winner = '';
      });
    }
    if ((boolPlayer[0] == 2 && boolPlayer[1] == 2 && boolPlayer[2] == 2) ||
        (boolPlayer[3] == 2 && boolPlayer[4] == 2 && boolPlayer[5] == 2) ||
        (boolPlayer[6] == 2 && boolPlayer[7] == 2 && boolPlayer[8] == 2) ||
        (boolPlayer[0] == 2 && boolPlayer[3] == 2 && boolPlayer[6] == 2) ||
        (boolPlayer[1] == 2 && boolPlayer[4] == 2 && boolPlayer[7] == 2) ||
        (boolPlayer[2] == 2 && boolPlayer[5] == 2 && boolPlayer[8] == 2) ||
        (boolPlayer[0] == 2 && boolPlayer[4] == 2 && boolPlayer[8] == 2) ||
        (boolPlayer[2] == 2 && boolPlayer[4] == 2 && boolPlayer[6] == 2)) {
      // print('player X win');
      setState(() {
        winner = 'X Win';
        won = true;
        isActive.value = true;
      });
      Timer(Duration(seconds: 3), () {
        resetButtonOnPress();
        XScore++;
        winner = '';
      });
    }
    if (!won) {
      int k = 0;
      for (int i = 0; i < boolPlayer.length; i++) {
        if (boolPlayer[i] != 0) k++;
      }
      if (k == boolPlayer.length) {
        Timer(Duration(seconds: 1), () {
          resetButtonOnPress();
          winner = '';
        });
      }
    }
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    // TODO: implement advance
    return false;
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    // TODO: implement initialize
    print(artboard);
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // TODO: implement setViewTransform
  }
}

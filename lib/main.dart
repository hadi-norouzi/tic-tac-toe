import 'dart:async';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:TicTocToe/Board.dart';
import 'package:TicTocToe/ResetButton.dart';
import 'package:TicTocToe/ScoreBoard.dart';

main() => runApp(MyApp());

List<int> boolPlayer = [0, 0, 0, 0, 0, 0, 0, 0, 0];

bool player = true;

/* 
 * true for first player and have O
 * false for second player and have X
 */
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with FlareController {
  int games = 0;
  int xScore = 0;
  int oScore = 0;
  String winner = 'TicTocToe';
  bool won = false;

  resetButtonOnPress() {
    setState(() {
      // isEmptyBoard() ? null : games++;
      for (int i = 0; i < boolPlayer.length; i++) {
        boolPlayer[i] = 0;
      }
      SystemSound.play(SystemSoundType.click);
      won = false;
      isActive.value = false;
      games = 0;
      xScore = 0;
      oScore = 0;
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
        body: Board(
            determineColorIcon, determineUser, whichPlayer, won, player, this),
        bottomNavigationBar: ScoreBoard(oScore, xScore, games, winner),
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

  void resetBoard() {
    setState(() {
      for (int i = 0; i < boolPlayer.length; i++) {
        boolPlayer[i] = 0;
      }
    });
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

      setState(() {
        winner = 'O Win';
        won = true;
        isActive.value = true;
      });
      Timer(Duration(seconds: 3), () {
        resetBoard();
        oScore++;
        games++;
        winner = '';
        won = false;
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
      setState(() {
        winner = 'X Win';
        won = true;
        isActive.value = true;
      });
      Timer(Duration(seconds: 3), () {
        resetBoard();
        xScore++;
        games++;
        winner = '';
        won = false;
      });
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

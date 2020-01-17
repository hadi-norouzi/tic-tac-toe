import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BoardValues with ChangeNotifier {
  List<int> players = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  bool isEmpty = false;
  bool isFull = false;
  bool won = false;
  bool turn = false;
  BuildContext context;

  BoardValues();

  void resetBoard() {
    for (int i = 0; i < players.length; i++) {
      players[i] = 0;
    }
    notifyListeners();
  }

  void setIcon(int index) {
    determineUser(players, turn, index);
    turn = !turn;
    notifyListeners();
  }

  void determineUser(List boolPlayer, bool turn, int situation) {
    if (boolPlayer[situation] == 0) {
      if (turn) {
        boolPlayer[situation] = 1;
        turn = !turn;
      } else {
        boolPlayer[situation] = 2;
        turn = !turn;
      }
    }
  }
}

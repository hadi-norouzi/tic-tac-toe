import 'package:flutter/foundation.dart';

class ScoreBoardValues extends ChangeNotifier {
  int games = 0;
  int xScore = 0;
  int oScore = 0;

  ScoreBoardValues();

  void increaseGame() {
    ++this.games;
    notifyListeners();
  }

  void increaseX() {
    xScore++;
    notifyListeners();
  }

  void increaseO() {
    oScore++;
    notifyListeners();
  }

  void resetScoreBoard() {
    this.games = this.xScore = this.oScore = 0;
    notifyListeners();
  }

  get getgames {
    return games;
  }
}

import 'package:flutter/material.dart';

IconData whichPlayer(int i, List<int> boolPlayer) {
  if (boolPlayer[i] == 1) {
    return Icons.panorama_fish_eye;
  } else if (boolPlayer[i] == 2) {
    return Icons.close;
  }
  return null;
}

Color determineColorIcon(List boolPlayer, int situation) {
  if (boolPlayer[situation] == 1)
    return Colors.orange;
  else if (boolPlayer[situation] == 2) return Colors.yellow;

  return Color(0xFF2C6171);
}

Widget sizedBox() {
  return SizedBox(
    width: 5,
    child: Container(
      color: Color(0xFF2C6171),
    ),
  );
}

int checkWin(List boolPlayer) {
  List winStates = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];

  for (var i = 0; i < winStates.length; i++) {
    if (boolPlayer[winStates[i][0]] == 1 &&
        boolPlayer[winStates[i][1]] == 1 &&
        boolPlayer[winStates[i][2]] == 1) {
      return 1;
    } else if (boolPlayer[winStates[i][0]] == 2 &&
        boolPlayer[winStates[i][1]] == 2 &&
        boolPlayer[winStates[i][2]] == 2) {
      return 2;
    }
  }
  return 3;
}

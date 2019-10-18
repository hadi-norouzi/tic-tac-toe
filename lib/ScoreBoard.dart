import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int O_Score;
  final int X_Score;
  final int games;
  final String winner;

  ScoreBoard(this.O_Score, this.X_Score, this.games, this.winner);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            color: Color(0xFF3E7D91),
            child: Center(
              child: Text(
                winner,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Container(
            height: 130,
            color: Color(0xFF2C6171),
            child: Flex(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.panorama_fish_eye,
                          color: Colors.orange,
                        ),
                        Text('Player1'),
                        Text(O_Score.toString())
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Games',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          games.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.close,
                          color: Colors.yellow,
                          size: 26,
                        ),
                        Text('Player2'),
                        Text(X_Score.toString())
                      ],
                    ),
                  ),
                ),
              ],
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
          Container(
            height: 10,
            color: Color(0xFF2C6171),
            // child: Container(
            //   width: 80,
            //   color: Colors.red,
            // ),
          )
        ],
      ),
    );
  }
}

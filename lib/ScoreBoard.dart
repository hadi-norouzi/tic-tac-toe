import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/BoardValues.dart';
import 'model/ScoreBoardValues.dart';

class ScoreBoard extends StatelessWidget {
  final Color textColor = Colors.white;
  ScoreBoard();
  @override
  Widget build(BuildContext context) {
    return Consumer<ScoreBoardValues>(
      builder: (BuildContext context, ScoreBoardValues value, Widget child) {
        return Container(
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                color: Color(0xFF3E7D91),
                child: Center(
                  child: Text(
                    "",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: textColor),
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
                              size: 30,
                            ),
                            Text(
                              value.oScore.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor),
                            )
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: textColor),
                            ),
                            Text(
                              value.games.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: textColor),
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
                              size: 30,
                            ),
                            // Text(
                            //   'Player2',
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.bold, color: textColor),
                            // ),
                            Text(
                              value.xScore.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: textColor),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
              Consumer<BoardValues>(
                builder: (BuildContext context, BoardValues win, Widget child) {
                  return Container(
                    color: Color(0xFF2C6171),
                    height: 10,
                    child: Padding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 30),
                              color:
                                  win.turn ? Colors.yellow : Color(0xFF2C6171),
                            ),
                          ),
                          Flexible(
                            child: Container(),
                            flex: 2,
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 30),
                              color:
                                  !win.turn ? Colors.yellow : Color(0xFF2C6171),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

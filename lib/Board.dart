import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  final Function determineColorIcon;
  final Function whichPlayer;
  final Function determineUser;
  final bool won;
  final dynamic parentClass;
  final bool player;

  Board(this.determineColorIcon, this.determineUser, this.whichPlayer, this.won,
      this.player, this.parentClass);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF3E7D91),
      child: won
          ? Opacity(
              opacity: won ? 1 : 0.0,
              child: FlareActor("asset/celebration.flr",
                  // You can find the
                  // example
                  // project
                  // here: https://www.2dimensions.com/a/castor/files/flare/change-color-example
                  fit: BoxFit.contain,
                  animation: won ? "Untitled" : null,
                  alignment: Alignment.center,
                  controller: parentClass),
            )
          : Center(
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
    );
  }
}

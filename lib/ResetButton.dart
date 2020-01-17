import 'package:TicTacToe/model/ScoreBoardValues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/BoardValues.dart';

class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ScoreBoardValues>(
      builder: (BuildContext context, ScoreBoardValues scoreBoardValues,
          Widget child) {
        return Consumer<BoardValues>(builder:
            (BuildContext context, BoardValues boardValues, Widget child) {
          return IconButton(
            icon: Icon(Icons.autorenew),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Text('Reset'),
                      content: Text('Are you sure?'),
                      // backgroundColor: Color(0xFF2C6171),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('ok'),
                          onPressed: () {
                            scoreBoardValues.resetScoreBoard();
                            boardValues.resetBoard();
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
            tooltip: 'reset',
          );
        });
      },
    );
  }
}

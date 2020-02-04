import 'package:TicTacToe/model/ScoreBoardValues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/BoardValues.dart';

class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scoreBoardValues = Provider.of<ScoreBoardValues>(context);
    var boardValues = Provider.of<BoardValues>(context);

    return CupertinoButton(
      child: Icon(Icons.autorenew),
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: Text('Reset'),
                content: Text('Are you sure?'),
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
    );
  }
}

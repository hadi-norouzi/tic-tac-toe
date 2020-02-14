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
      child: Icon(
        Icons.autorenew,
        color: Colors.white,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return CupertinoAlertDialog(
            //   title: Text('Reset'),
            //   content: Text('Are you sure?'),
            //   actions: <Widget>[
            //     CupertinoDialogAction(
            //       child: Text('Cancel'),
            //       onPressed: () {
            //         Navigator.of(context).pop();
            //       },
            //     ),
            //     CupertinoDialogAction(
            //       child: Text('ok'),
            //       onPressed: () {
            //         scoreBoardValues.resetScoreBoard();
            //         boardValues.resetBoard();
            //         Navigator.of(context).pop();
            //       },
            //     ),
            //   ],
            // );
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              title: Text(
                'Reset',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Are you sure?'),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.check,color: Colors.green,),
                          onPressed: () {
                            scoreBoardValues.resetScoreBoard();
                            boardValues.resetBoard();
                            Navigator.of(context).pop();
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.close,color: Colors.red,),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}

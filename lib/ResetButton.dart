import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final Function reset;

  ResetButton(this.reset);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.autorenew),
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Reset Game'),
                content: Text('Are you sure?'),
                backgroundColor: Color(0xFF2C6171),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  FlatButton(
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      reset();
                    },
                  ),
                ],
              );
            });
      },
      tooltip: 'reset',
    );
  }
}

import 'package:flutter/material.dart';
import 'Board.dart';

class ResetBtn extends StatefulWidget {
  @override
  _ResetBtnState createState() => _ResetBtnState();
}

class _ResetBtnState extends State<ResetBtn> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.autorenew),
      onPressed: () {
        print(context);
      },
      tooltip: 'reset',
    );
  }
}

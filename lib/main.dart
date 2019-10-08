import 'package:app/ResetBtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import './ScoreBoard.dart';
import './Board.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final bool reset = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    debugPaintSizeEnabled = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2C6171),
          title: Text('TicTocToe'),
          actions: <Widget>[
            ResetBtn(),
          ],
        ),
        body: Container(
          color: Color(0xFF3E7D91),
          child: Center(
            child: Board(),
          ),
        ),
        bottomNavigationBar: ScoreBoard(),
      ),
    );
  }
}

import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:TicTacToe/Board.dart';
import 'package:TicTacToe/ResetButton.dart';
import 'package:TicTacToe/ScoreBoard.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import './model/ScoreBoardValues.dart';
import 'model/BoardValues.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: SplashScreen(
          imageBackground: AssetImage('asset/tic_tac_toe_loader_.gif'),
          photoSize: 200.0,
          seconds: 4,
          navigateAfterSeconds: MyApp(),
          // backgroundColor: Colors.green,
        ),
      ),
    );

/*
 * true for first player and have O
 * false for second player and have X
 */

class MyApp extends StatelessWidget with FlareController {
  final String winner = 'TicTacToe';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ScoreBoardValues(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => BoardValues(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2C6171),
          title: Text(
            'TicTacToe',
            style: TextStyle(fontSize: 25, fontFamily: 'tahoma'),
          ),
          actions: <Widget>[
            ResetButton(),
          ],
        ),
        body: Board(this),
        bottomNavigationBar: ScoreBoard(),
      ),
    );
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) => false;

  @override
  void initialize(FlutterActorArtboard artboard) {}

  @override
  void setViewTransform(Mat2D viewTransform) {}
}

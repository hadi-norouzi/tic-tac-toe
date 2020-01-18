import 'package:TicTacToe/Menu.dart';
import 'package:flutter/material.dart';
import 'App.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Menu(),
        routes: {
          'myapp': (BuildContext context) => App(),
        },
      ),
    );

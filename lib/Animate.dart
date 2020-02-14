import 'package:flutter/material.dart';

class Animate extends StatefulWidget {
  @override
  _AnimateState createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..addListener(() {
        setState(() {
          animation = CurvedAnimation(
              parent: animationController, curve: Curves.easeInOut);
        });
      });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

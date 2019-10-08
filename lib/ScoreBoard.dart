import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: <Widget>[
          Container(
            height: 130,
            color: Color(0xFF2C6171),
            child: Flex(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.panorama_fish_eye,
                          color: Colors.yellow[600],
                          
                        ),
                        Text('Player1'),
                        Text('0')
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Games',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.close,
                          color: Colors.orange[400],
                          size: 26,
                          
                        ),
                        Text('Player2'),
                        Text('0')
                      ],
                    ),
                  ),
                ),
              ],
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
          Container(
            height: 20,
            color: Colors.grey[700],
          )
        ],
      ),
    );
  }
}

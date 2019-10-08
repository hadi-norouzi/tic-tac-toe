import 'package:flutter/material.dart';

List<IconData> IconUser = [
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null
];

class Board extends StatefulWidget {
  Board({bool reset});

  bool reset;
  @override
  _BoardState createState() => _BoardState(reset);
}

class _BoardState extends State<Board> {
  _BoardState(bool reset);

  bool reset = false;

  @override
  Widget build(BuildContext context) {
    if (this.reset) {
      for (var i in IconUser) {
        i = null;
      }
    }

    return Container(
      width: 350,
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    color: Color(0xFF2C6171),
                    iconSize: 70,
                    icon: Icon(IconUser[0]),
                    onPressed: () {
                      if (IconUser[0] != Icons.close) {
                        setState(() {
                          IconUser[0] = Icons.close;
                        });
                      } else {
                        setState(() {
                          IconUser[0] = Icons.panorama_fish_eye;
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                  child: Container(
                    color: Color(0xFF2C6171),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[1]),
                    onPressed: () {
                      setState(() {
                        IconUser[1] = Icons.close;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                  child: Container(
                    color: Color(0xFF2C6171),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[2]),
                    splashColor: Colors.black,
                    onPressed: () {
                      setState(() {
                        IconUser[2] = Icons.close;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(width: 3),
          Divider(
            color: Color(0xFF2C6171),
            height: 10,
            thickness: 5,
          ),
          Expanded(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[3]),
                    splashColor: Colors.black,
                    onPressed: () {
                      setState(() {
                        IconUser[3] = Icons.close;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                  child: Container(
                    color: Color(0xFF2C6171),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[4]),
                    splashColor: Colors.black,
                    onPressed: () {
                      setState(() {
                        IconUser[4] = Icons.close;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                  child: Container(
                    color: Color(0xFF2C6171),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[5]),
                    splashColor: Colors.black,
                    onPressed: () {
                      setState(() {
                        IconUser[5] = Icons.close;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xFF2C6171),
            height: 10,
            thickness: 5,
          ),
          Expanded(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[6]),
                    splashColor: Colors.black,
                    onPressed: () {
                      setState(() {
                        IconUser[6] = Icons.close;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                  child: Container(
                    color: Color(0xFF2C6171),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[7]),
                    splashColor: Colors.black,
                    onPressed: () {
                      setState(() {
                        IconUser[7] = Icons.close;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                  child: Container(
                    color: Color(0xFF2C6171),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    color: Colors.orange,
                    iconSize: 70,
                    icon: Icon(IconUser[8]),
                    splashColor: Colors.black,
                    onPressed: () {
                      setState(() {
                        IconUser[8] = Icons.close;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 120, horizontal: 30),
        // color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Text(
                'Creator: Hadi Norouzi\nBuild with Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                // textDirection: TextDirection.rtl,
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 100,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Image.asset('asset/GitHub.png'),
                  ),
                ),
                Container(
                  width: 100,
                  child: Image.asset('asset/twitter.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

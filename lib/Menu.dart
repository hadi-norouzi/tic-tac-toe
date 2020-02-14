import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 1,
            onPressed: () {
              Navigator.pushNamed(context, 'about');
            },
            child: Icon(Icons.help_outline),
          ),
          FloatingActionButton(
            heroTag: 2,
            onPressed: () {},
            child: Icon(Icons.wb_sunny),
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                // color: Colors.grey,
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.grey,
                  child: Text('Single Player'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'myapp');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  elevation: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.grey,
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.grey,
                  child: Text('Two Player'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'myapp');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  elevation: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

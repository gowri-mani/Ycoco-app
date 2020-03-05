
import 'package:flutter/material.dart';


void main() {
      runApp(
        MaterialApp(home: Texty()),
      );
    }

    class Texty extends StatefulWidget {
      @override
      State<StatefulWidget> createState() {
        return new TextyState();
      }
    }

class TextyState extends State<Texty> {
  int number=2;

  void subtractNumbers() {
    if (number >= 3)
    setState(() {
      number = number - 1;
    });
  }

  void addNumbers() {
    if (number >= 2)
    setState(() {
      number = number + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Raised Button"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '$number',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 160.0,
                  fontFamily: 'Roboto',
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: addNumbers,
                    child: new Text("Add"),
                  ),
                  new RaisedButton(
                    onPressed: subtractNumbers,
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Subtract",
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
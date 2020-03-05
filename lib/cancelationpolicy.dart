import 'package:flutter/material.dart';
import 'login.dart';

class Cancelpolicy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor:Colors.white,
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(Icons.menu,color: Colors.green, size: 40),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),

          ),

          actions: <Widget>[
            RaisedButton.icon(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>Login()),
              );
            }, color:Colors.white,
              icon: Icon(Icons.arrow_back_ios, color: Colors.green),  label: Text('Back', style:TextStyle(color: Colors.green),),
            ),

          ],

        ),
      ),
//        body:new ButtonClickEvent(),
    );
  }
}



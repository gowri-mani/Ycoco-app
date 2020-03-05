import 'package:flutter/material.dart';
import 'package:project_ycoco/com/ycoco/cls/order.dart';
import 'package:project_ycoco/login.dart';

class Order extends StatelessWidget {
  final OrderModel data;
  Order({this.data});

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
          title: Text ( '${data.count}',style:TextStyle(color:Colors.black),),
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
        body:new OrderCoco(),

      ),

    );

  }
}
class OrderCoco extends StatefulWidget {
  @override
  OrderCocoState createState() => new OrderCocoState();
}

class OrderCocoState extends State<OrderCoco> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Wrap(
        children: <Widget>[
      Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Text('No of Days Subscribed', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
            ),
            Expanded(
              child: Text('Novfgfg', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
            ),
          ],
        ),
      Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(

                child: Text('Coconuts Per Day', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
              ),
              Expanded(

                child: Text('fgdfg', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
              ),

            ],
          ),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Total No of Coconut(2 x 1)', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),
                  Expanded(
                    child: Text('Craft', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),

                ],
              ),

        ],
      ),

          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Sub Total (2 x 44 )', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),
                  Expanded(
                    child: Text('Craft', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),

                ],
              ),

            ],
          ),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Delivery Fee', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),
                  Expanded(
                    child: Text('Craft', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),

                ],
              ),

            ],
          ),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Coupon Code', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),
                  Expanded(
                    child: Text('Craft', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),

                ],
              ),

            ],
          ),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text('Total', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),
                  Expanded(
                    child: Text('Craft', textAlign: TextAlign.center,style:TextStyle(fontSize:20),),
                  ),

                ],
              ),

            ],
          ),
    ],
      ),

    ],
    ),
    ],
      ),
    );
  }
}



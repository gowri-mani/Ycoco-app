import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:project_ycoco/com/ycoco/cls/order.dart';
import 'dart:async';
import 'package:project_ycoco/account.dart';
import 'package:project_ycoco/offers.dart';
import 'package:project_ycoco/myorders.dart';
import 'package:project_ycoco/referfriend.dart';
import 'package:project_ycoco/aboutus.dart';
import 'package:project_ycoco/cancelationpolicy.dart';
import 'package:project_ycoco/faq.dart';
import 'package:project_ycoco/terms.dart';
import 'package:project_ycoco/order.dart';
import 'package:project_ycoco/main.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.only(top: 20.0,bottom:20.0),
            children: <Widget>[
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: DrawerHeader(
                    child: Text('hello,', style: TextStyle(color: Colors.green,fontSize:22,fontFamily:'Times')),
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(0.0)
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Login()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('My Account',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Myaccount()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.local_offer ),
                title: Text('Offers',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Offers()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Orders',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Myorder()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.people ),
                title: Text('Refer Friend',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Referfriend()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.live_help ),
                title: Text('FAQ',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Faq()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.local_library),
                title: Text('Terms & Conditions',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Terms()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.cancel),
                title: Text('Cancellation Policy',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Cancelpolicy()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('About Us',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Aboutus()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text('Log Out',style: TextStyle(fontSize:22,fontFamily:'Times'),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>MyApp()),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: new AppBar(
          backgroundColor:Colors.white,
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(Icons.menu,color: Colors.green, size: 40),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),

          ),
          actions: <Widget>[
            Image.asset(
              'assets/ycoco-logo.png', width:80.0, height: 15.0,
              alignment: Alignment.center,
            ),

          ],
        ),
        body:new ButtonClickEvent(),
      ),
    );
  }
}

class ButtonClickEvent extends StatefulWidget {

  @override
  ButtonClickEventState createState() {
    return new ButtonClickEventState();
  }
}

class ButtonClickEventState extends State<ButtonClickEvent>with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  int countValue = 2;

  //final data = ButtonClickEventState(countValue:2);

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }





  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();

  Future<Null> _selectStartDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedStartDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedStartDate)
      setState(() {
        selectedStartDate = picked;
      });
  }
  Future<Null> _selectEndDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedEndDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedEndDate)
      setState(() {
        selectedEndDate = picked;
      });
  }

  String dropdownValue = 'Ashok Nagar';
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    Widget carousel = new Carousel(
      boxFit: BoxFit.fill,
      images: [
        new AssetImage('assets/slide-1.jpg'),
        new AssetImage('assets/slide-2.jpg'),
        new AssetImage('assets/slide-3.jpg'),
        new AssetImage('assets/slide-4.jpg'),
        new AssetImage('assets/slide-5.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Container(
                    height: screenHeight / 4.9,
                    child: new Stack(
                      children: [
                        carousel,
                      ],
                    ),
                  ),
                  new Column(
                    children: <Widget>[
                      new Text("Tender Coconut on Your Door Step",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 16.0),),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            "Order Today Taste Tomorrow Delivery Between 6.00 am to 10.00 am. Minimun 2 Coconuts per Delivery",
                            style: new TextStyle(
                                fontSize: 18.0),),
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'assets/order_image.jpg', width: 500.0,
                                height: 100.0,
                                alignment: Alignment.topCenter,
                              ),

                              new Text("₹44",
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    fontSize: 20.0),),
                              new Text("Minimum 2 Coconuts Per Delivery",
                                textAlign: TextAlign.center,
                                style: new TextStyle(color: Colors.redAccent,
                                    fontSize: 20.0),),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  RaisedButton(
                                    shape: new CircleBorder(),
                                    splashColor: Colors.green,

                                    child: new Icon(
                                      Icons.remove, color: Colors.black,),


                                    onPressed: () {if (countValue >= 3)
                                      //Insert event to be fired up when button is clicked here
                                      //in this case, this increments our `countValue` variable by one.
                                      setState(() => countValue -= 1);
                                    },
                                  ),

                                  Align(
                                      child: Center(
                                          child: Text('$countValue',
                                              style: TextStyle(
                                                  fontSize: 25.0)))),
                                  RaisedButton(
                                    shape: new CircleBorder(),
                                    splashColor: Colors.green,
                                    child: new Icon(
                                      Icons.add, color: Colors.black,),

                                    onPressed: () {
                                      //Insert event to be fired up when button is clicked here
                                      //in this case, this increments our `countValue` variable by one.
                                      setState(() => countValue += 1);
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Please Choose Your Location: ",
                                  style: new TextStyle(fontSize: 16)),
                              DropdownButton<String>(
                                value: dropdownValue,
                                elevation: 8,
                                style: TextStyle(
                                    color: Colors.deepPurple
                                ),
                                underline: Container(
                                  height: 3,
                                  color: Colors.green,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Ashok Nagar',
                                  'KK Nagar',
                                  'Vadapalani',
                                  'Saligramam',
                                  'valasaravakkam',
                                  'Virugambakkam',
                                  'Ramapuram',
                                  'Porur',
                                  'Iyayapanthangal',
                                  'Maduravoyal',
                                  'Kattupakkam',
                                  'St.Thomas Mount',
                                  'Manapakkam',
                                  'Mugalivakkam',
                                ]
                                    .map<DropdownMenuItem<String>>((
                                    String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                        value, style: TextStyle(fontSize: 16)),
                                  );
                                })
                                    .toList(),
                              ),
                            ],
                          ),
                          new Row(
                            children: <Widget>[
                              Text('Start date:', textAlign: TextAlign.center,
                                style: new TextStyle(color: Colors.black,
                                    fontSize: 16.0),),
                              Text("${selectedStartDate.toLocal()}".split(' ')[0],
                                  style: new TextStyle(
                                      color: Colors.redAccent, fontSize: 16.0)),
                              SizedBox(height: 10.0,),
                              IconButton(
                                icon: Icon(Icons.date_range),
                                onPressed: () => _selectStartDate(context),
                              ),

                              new Text('End date:', textAlign: TextAlign.center,
                                style: new TextStyle(color: Colors.black,
                                    fontSize: 16.0),),
                              Text("${selectedEndDate.toLocal()}".split(' ')[0],
                                  style: new TextStyle(
                                      color: Colors.redAccent, fontSize: 16.0)),
                              SizedBox(height: 10.0,),
                              IconButton(
                                icon: Icon(Icons.date_range),
                                onPressed: () => _selectEndDate(context),
                              )

                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: RaisedButton(
                              color: Colors.green,
                              onPressed: () {
                                OrderModel orderM = new OrderModel();
                                orderM.count = countValue;
                                Navigator.push(context,MaterialPageRoute(builder: (context) =>Order( data: orderM)),
                                );
                              },
                              child: Text('ORDER NOW', style: new TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: 'Times'),),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

          );
        }
    );

  }
}




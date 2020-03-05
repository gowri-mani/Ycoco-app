import 'package:flutter/material.dart';
  import 'login.dart';

  class Faq extends StatelessWidget {

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
  body:new HomePage(),
  ),

  );
  }
  }

  class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
  }

  class HomePageState extends State<HomePage> {
  bool visibilityTag = false;
  bool visibilityObs = false;
  bool visibilityAreas = false;


  void _changed(bool visibility, String field) {
  setState(() {
  if (field == "tag"){
  visibilityTag = visibility;
  }
  if (field == "obs"){
  visibilityObs = visibility;
  }
  if (field == "areas"){
  visibilityAreas = visibility;
  }
  });
  }

  @override
  Widget build(BuildContext context){
  return new Scaffold(
  body: new ListView(
  padding: const EdgeInsets.all(20.0),

  children: <Widget>[
  new Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  new InkWell(
  onTap: () {
  visibilityTag ? null : _changed(true, "tag");
  },
  child: new Container(
  margin: new EdgeInsets.only(top: 16.0),
  child: new Column(
  children: <Widget>[
  new Container(
  margin: const EdgeInsets.only(top: 8.0),
  child: new Text(
  "1.What are the delivery timings?",
  style: new TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w400,
  color: visibilityTag ? Colors.green[400] : Colors.green[600],
  ),
  ),
  ),
  ],
  ),
  )
  ),
  ],
  ),

  visibilityTag ? new Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  new Expanded(

  child:Text('6 AM to 10 AM all days!',textAlign: TextAlign.center, style: new TextStyle(
  fontSize: 20.0,),)
  ),
  new Expanded(
  child: new IconButton(
  color: Colors.red[400],
  icon: const Icon(Icons.cancel, size: 22.0,),
  onPressed: () {
  _changed(false, "tag");
  },
  ),
  ),
  ],
  ) : new Container(),

  new InkWell(
  onTap: () {
  visibilityObs ? null : _changed(true, "obs");
  },
  child: new Container(
  margin: new EdgeInsets.only(top: 16.0),
  child: new Column(
  children: <Widget>[
  new Container(
  margin: const EdgeInsets.only(top: 8.0),
  child: new Text(
  "2.What are the delivery Charges?",
  style: new TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w400,
  color: visibilityObs ? Colors.green[400] : Colors.green[600],
  ),
  ),
  ),
  ],
  ),
  )
  ),
  new Container(
  margin: new EdgeInsets.only(left: 16.0, right: 0.0),
  child: new Column(
  children: <Widget>[
  visibilityObs ? new Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
  new Expanded(
  child:Text('We charge  processing packing and handling charges of ₹6 per tender coconut.',textAlign: TextAlign.center, style: new TextStyle(
  fontSize: 20.0,))
  ),
  new Expanded(
  child: new IconButton(
  color: Colors.red[400],
  icon: const Icon(Icons.cancel, size: 22.0,),
  onPressed: () {
  _changed(false, "obs");
  },
  ),
  ),
  ],
  ) : new Container(),
  new InkWell(
  onTap: () {
  visibilityAreas ? null : _changed(true, "areas");
  },
  child: new Container(
  margin: new EdgeInsets.only(top: 16.0),
  child: new Column(
  children: <Widget>[
  new Container(
  margin: const EdgeInsets.only(top: 8.0),
  child: new Text(
  "3.What are your areas of delivery? ",
  style: new TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w400,
  color: visibilityAreas ? Colors.green[400] : Colors.green[600],
  ),
  ),
  ),
  ],
  ),
  )
  ),
  new Container(
  margin: new EdgeInsets.only(left: 16.0, right: 0.0),
  child: new Column(
  children: <Widget>[
  visibilityAreas ? new Row(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
  new Expanded(
  child:Text('As of now,we will be delivering to parts of Ashok Nagar, kk Nagar,vadapalani,valasaravakkam,st.thomas mount ',textAlign: TextAlign.center, style: new TextStyle(
  fontSize: 20.0,))

  ),
  new Expanded(
  child: new IconButton(
  color: Colors.red[400],
  icon: const Icon(Icons.cancel, size: 22.0,),
  onPressed: () {
  _changed(false, "areas");
  },
  ),
  ),
  ],
  ) : new Container(),
  ],
  )
  ),

  ],
  )
  ),
  ],
  ),
  );
  }
  }

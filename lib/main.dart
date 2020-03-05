import 'package:flutter/material.dart';
import 'package:project_ycoco/Login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/page1.jpg"), fit: BoxFit.cover)),

        child: Scaffold(

          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: FirstRoute(),
        ),
      ),
    );
  }
}
class FirstRoute extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}
class _FormState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {

    return Form(

      key: _formKey,

      child: new Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            'assets/ycoco-logo.png', width:100.0, height: 50.0,
            alignment: Alignment.topCenter ,
          ),

      new Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(

                    color: Colors.red,
                    width: 3.0,),

              ),
              hintText: 'Enter Mobilenumber',
              prefixIcon: const Icon(
                Icons.phone,
                color: Colors.white,
              ),

            ),

            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Mobilenumber';
              }
              else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
                return "done";
              };
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('Send OTP'),
            ),
          ),

        ],
      ),
      ],
      ),
    );
  }
}
final _formKey = GlobalKey<FormState>();
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/page1.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: RegisterForm(),
        ),
      ),
    );
  }
}
class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);
  @override
  _RegisterFormState createState() => _RegisterFormState();
}
class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: new Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
      Image.asset(
      'assets/ycoco-logo.png', width:100.0, height: 50.0,
        alignment: Alignment.topCenter ,
      ),

      new Column(
          children: <Widget>[
            TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.red,
                    width: 3.0),
              ),
              hintText: 'Enter OTP',
              prefixIcon: const Icon(
                Icons.phone,
                color: Colors.white,
              ),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter OTP';
              }
              else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Login()),
                );
              };
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: Text('submit'),
            ),
          ),
        ],
      ),
      ],
      ),
    );
  }
}
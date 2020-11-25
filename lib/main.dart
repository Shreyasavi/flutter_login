import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'World',
                    style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.deepPurple
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(250.0, 190.0, .0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.deepPurple
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:50.0, left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple)
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple)
                      ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment(1.0,0.0),
                  padding: EdgeInsets.only(top: 2.0, left: 0.0),
                  child: InkWell(
                    child: Text('Forgot Password',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.deepPurple,
                    color: Colors.deepPurple,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 20.0,),
                Container(
                  height: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0
                      ) ,
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(AssetImage('assets/google.png')
                          ),
                        ),
                        SizedBox(width: 16,),
                        Center(
                          child: Text('Log-In with google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
            SizedBox(height: 15.0,),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              Text(
              'New to The app? ',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 15.0),
              InkWell(
               onTap: (){
                 Navigator.of(context).pushNamed('/signup');
               },
                child: Text('Register',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                ),
            )
        ],
      ),
    ],
      ),
    );
  }
}

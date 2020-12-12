import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tempus",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Material(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 100.0,
            horizontal: 30.0,
          ),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Image.asset('Images/periods.png'),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'TEM',
                      style: TextStyle(
                        color: Color(0xff022abb),
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      'PUS',
                      style: TextStyle(
                        color: Color(0xff4ed6fd),
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'We Care for Your Health and Hygiene',
                  style: TextStyle(
                    color: Color(0xff022abb),
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.login,
                        color: Color(0xff4ed6fd),
                        size: 30.0,
                      ),
                      Text(
                        ' | Enter your Username',
                        style: TextStyle(
                          color: Color(0xff4ed6fd),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: Color(0xff4ed6fd),
                        size: 30.0,
                      ),
                      Text(
                        ' | Enter your Password',
                        style: TextStyle(
                          color: Color(0xff4ed6fd),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff022abb),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Not Registered Yet, Sign Up ?',
                  style: TextStyle(
                    color: Color(0xff022abb),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffffffff),
                Color(0xff4ed6fd),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

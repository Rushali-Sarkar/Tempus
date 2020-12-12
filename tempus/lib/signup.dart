import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatelessWidget {
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
            vertical: 50.0,
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
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 30.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.supervised_user_circle_sharp,
                          color: Color(0xff4ed6fd),
                          size: 20.0,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Your Name",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 30.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.alternate_email_outlined,
                          color: Color(0xff4ed6fd),
                          size: 20.0,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email Address",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 30.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock_open,
                          color: Color(0xff4ed6fd),
                          size: 20.0,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                        'Sign Up',
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
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Already Registered, ',
                            style: TextStyle(
                              color: Color(0xff022abb),
                              fontSize: 12.0,
                            ),
                          ),
                          FlatButton(
                            color: Colors.transparent,
                            padding: EdgeInsets.all(0.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn()),
                              );
                            },
                            child: Text(
                              'Sign In ?',
                              style: TextStyle(
                                color: Color(0xff022abb),
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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

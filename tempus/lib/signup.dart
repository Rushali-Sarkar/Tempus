import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';
import 'constants.dart';
import 'package:animated_button/animated_button.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatefulWidget {
  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<SignUp> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tempus",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Material(
          child: Container(
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
            padding: EdgeInsets.symmetric(
              vertical: 50.0,
              horizontal: 30.0,
            ),
            child: SafeArea(
              top: false,
              bottom: false,
              child: ListView(
                controller: ScrollController(),
                children: <Widget>[
                  Column(
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
                        height: 40.0,
                      ),
                      buildTextField("Your Name"),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField("Email"),
                      SizedBox(
                        height: 20.0,
                      ),
                      buildTextField("Password"),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FittedBox(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: kdeepblue,
                                ),
                                child: Center(
                                  child: AnimatedButton(
                                    color: Colors.transparent,
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Sign Up",
                                            style: Theme.of(context)
                                                .textTheme
                                                .button
                                                .copyWith(color: kwhite)),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: hintText,
        filled: true,
        fillColor: kwhite,
        hintStyle: TextStyle(
          color: klightblue,
          fontSize: 16.0,
        ),
        prefixIcon: hintText == "Email"
            ? Icon(
                Icons.email,
                color: klightblue,
              )
            : hintText == "Password"
                ? Icon(
                    Icons.lock,
                    color: klightblue,
                  )
                : Icon(
                    Icons.supervised_user_circle,
                    color: klightblue,
                  ),
        suffixIcon: hintText == "Password"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(
                        Icons.visibility_off,
                        color: klightblue,
                      )
                    : Icon(
                        Icons.visibility,
                        color: klightblue,
                      ),
              )
            : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }
}

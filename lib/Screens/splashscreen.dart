import 'dart:async';

import 'package:YUREKA/Screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login())));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(),
        child: Scaffold(
          body: Container(
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Rectangle 33.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: new Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 286,
                        height: 494,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/logo_final.png'),
                          ),
                        ),
                      ),
                      Container(
                        padding: new EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .58,
                            right: 20.0,
                            left: 50.0),
                        child: Text(
                          "YUREKA",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 50,
                            color: Colors.white,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0.0, 5.0),
                                blurRadius: 3.0,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
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
}

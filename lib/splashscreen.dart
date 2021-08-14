import 'dart:async';

//import 'package:YUREKA/Screens/Login1.dart';
import './Login.dart';
//import 'package:Yureka_login/Login1.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {
  var duration;
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> with SingleTickerProviderStateMixin {
  var width = 0;
  var height = 0;
  var controller;
  var animation1;
  var c;
  var duration;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: Duration(seconds: 1),
    );
    animation1 = CurvedAnimation(parent: controller, curve: Curves.easeInOut)
      ..addListener(() {
        setState(() {
          print(controller);
        });
      });
    print(animation1.value);
    controller.forward();
  }

  @override
  void didUpdateWidget(SplashScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    controller.duration = widget.duration;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Login1())));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(),
        child: Scaffold(
          body: Container(
            decoration: new BoxDecoration(
                /*image: DecorationImage(
                image: AssetImage('assets/Rectangle 33.png'),
                fit: BoxFit.fill,
              ),*/
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  const Color.fromRGBO(0, 137, 181, 1),
                  const Color.fromRGBO(0, 142, 184, 1),
                  const Color.fromRGBO(0, 153, 192, 1),
                  const Color.fromRGBO(0, 156, 196, 1),
                  const Color.fromRGBO(0, 159, 200, 1),
                  const Color.fromRGBO(0, 164, 203, 1),
                  const Color.fromRGBO(0, 170, 207, 1),
                  const Color.fromRGBO(0, 187, 209, 1),
                  const Color.fromRGBO(0, 190, 215, 1),
                  const Color(0x0ff00a4d2),
                ])),
            child: new Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                  Center(
                    child: AnimatedOpacity(
                      opacity: animation1.value,
                      duration: Duration(milliseconds: 500),
                      child: Stack(
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
                          /*Container(
                            padding: new EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .58,
                                right: 20.0,
                                left: 50.0),
                            child: Text(
                              "YUREKA",
                              style: TextStyle(
                                fontFamily: "Lato",
                                fontSize: 50 * animation1.value,
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
                          ),*/
                        ],
                      ),
                    ),
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

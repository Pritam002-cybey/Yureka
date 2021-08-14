import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ideaadded extends StatefulWidget {
  ideaadded({Key key}) : super(key: key);

  @override
  _ideaaddedState createState() => _ideaaddedState();
}

class _ideaaddedState extends State<ideaadded> {
  int value = 23;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: new BoxDecoration(
                /*image: DecorationImage(
                image: AssetImage('assets/Rectangle 33.png'),
                fit: BoxFit.fill,
              ),*/
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Colors.cyan[200]])),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/component.png',
                            height: 700,
                            width: 900,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Congratulations",
                          style: GoogleFonts.oswald(
                            textStyle: TextStyle(
                              fontFamily: "Russo One",
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: Divider(
                            color: Colors.cyanAccent,
                          ),
                        ),
                        Text(
                          "Your Idea is now Public !",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 30,
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
                        Text(
                          "Your progress Score :",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 30,
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
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "$value %",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 40,
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
                        SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}

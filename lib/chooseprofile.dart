import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chooseprofile extends StatefulWidget {
  @override
  _ChooseprofileState createState() => _ChooseprofileState();
}

class _ChooseprofileState extends State<Chooseprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: missing_return
      body: OrientationBuilder(builder: (context, orientation) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width, //double.infinity,
            height: MediaQuery.of(context).size.height, //double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/blue.png'), fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 27),
                  height: 80,
                  width: 50,
                  child: Image.asset(
                    'assets/logo_final.png', //color: Colors.amber.shade300,
                    alignment: Alignment.center,
                    //colorBlendMode: BlendMode.difference,
                    height: 80,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "CHOOSE YOUR PROFILE",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    letterSpacing: 0,
                  )),
                ),
                SizedBox(height: 90),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    //FlatButton(
                    //onPressed: () => print('pressed'),
                    Container(
                      height: 150, width: 150,
                      //color: Colors.amberAccent,
                      decoration: BoxDecoration(
                          color: Colors.brown.shade100,
                          border: Border.all(
                              width: 5, color: Colors.grey.shade800)),
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      child: FlatButton(
                        onPressed: () => print('pressed'),
                        child: Container(
                          height: 100,
                          width: 90,
                          child: Image.asset(
                            'assets/glasses@2x.png',
                            color: Colors.black,
                            fit: BoxFit.fill,
                          ),
                          //decoration: BoxDecoration(
                          // image: DecorationImage(
                          // image: AssetImage('assets/glasses@2x.png'),
                          //fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    //),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.brown.shade100,
                          border: Border.all(width: 5, color: Colors.white30)),
                      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      child: FlatButton(
                        onPressed: () => print('pressed'),
                        child: Container(
                          height: 100,
                          width: 90,
                          child: Image.asset(
                            'assets/idea (1)@2x.png',
                            color: Colors.grey.shade800,
                            fit: BoxFit.fill,
                          ),
                          //decoration: BoxDecoration(
                          //image: DecorationImage(
                          //image: AssetImage(
                          //'//assets/idea (1)@2x.png',
                          //),
                          //fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    //SizedBox(
                    //height: 50,
                    //),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    //SizedBox(
                    //width: 40,
                    //),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(//color: Colors.grey
                          ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 45,
                          ),
                          FlatButton(
                            color: Colors.black12,
                            onPressed: () => print("Pressed"),
                            child: Text("Seeker",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoSlab(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 25,
                                  letterSpacing: 0,
                                ))),
                          ),
                          SizedBox(width: 88),
                          FlatButton(
                            color: Colors.black12,
                            onPressed: () => print("Pressed"),
                            child: Text("Ideator",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoSlab(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 25,
                                  letterSpacing: 0,
                                ))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    //SizedBox(
                    //width: 40,
                    //),
                    /*Container(
                      height: 40,
                      width: 210,
                      decoration: BoxDecoration(color: Colors.cyan.shade300),
                      child: FlatButton(
                        onPressed: () => print("pressed"),
                        child: Text("  Ideator",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 25,
                              letterSpacing: 0,
                            ))),
                      ),
                    ),*/
                  ],
                ),
                SizedBox(
                  height: 130,
                ),
                FlatButton(
                  onPressed: () => print("pressed"),
                  child: Text(
                    "Need Help?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 25,
                      letterSpacing: 0,
                    )),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

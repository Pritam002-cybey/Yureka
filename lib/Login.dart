//import 'package:Yureka_login/Login1.dart';
//import 'package:Yureka_login/nomoreideas.dart';
//import 'package:Yureka_login/Login1.dart';
import './Login1.dart';
import './Signup1.dart';
import './chooseprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  //bool isRememberMe = false;
  //bool _passwordVisible;
  //void initState() {
  //_passwordVisible = false;
  //super.initState();
  //}

  Widget googleSignUp() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: double.infinity,
      child: RaisedButton(
        elevation: 9,
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => Chooseprofile()));
        },
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Container(
              height: 35.08,
              width: 35.08,
              child: Image.asset(
                'assets/google.png',
                //height: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Continue with Google",
                style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  letterSpacing: 0,
                ))),
          ],
        ),
      ),
    );
  }

  Widget linkedInSignUp() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: double.infinity,
      child: RaisedButton(
        elevation: 9,
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => Chooseprofile()));
        },
        padding: EdgeInsets.all(10),
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Container(
              height: 35.08,
              width: 35.8,
              child: Image.asset(
                'assets/linkedin@2x.png',
                //height: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Continue with LinkedIn",
                style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  letterSpacing: 0,
                ))),
          ],
        ),
      ),
    );
  }

  /*Widget pswrdSignUp() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 36, horizontal: 10),
      width: double.infinity,decoration: BoxDecoration(),
      child: RaisedButton(
        elevation: 9,
        onPressed: () => print("Login Pressed"),
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 56.8,
              height: 35.08,
            ),
            Text("Continue with Password",
                style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  letterSpacing: 0,
                ))),
          ],
        ),
      ),
    );
  }*/

  Widget pswrdSignUp() {
    return Container(
      width: 360,
      //padding: EdgeInsets.symmetric(vertical: 36, horizontal: 70),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 0.7, color: Colors.white),
      ),
      height: 55,
      //child: Center(
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Login()));
        },
        //padding: EdgeInsets.symmetric(vertical: 6, horizontal: 30),
        //shape: RoundedRectangleBorder(
        //  borderRadius: BorderRadius.circular(30),
        //side: BorderSide(width: 1, color: Colors.white)),
        //onPressed: () => print("Pressed"),
        //print("pressed"),
        child: Text("  Continue with Password",
            overflow: TextOverflow.visible,
            // textAlign: TextAlign.end,
            textDirection: TextDirection.ltr,
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 18,
              letterSpacing: 0,
            ))),
      ),
      //),
      // ),
    );
  }

  Widget buildSignupBtn() {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => SignUp1()));
        },
        child: Text("Sign Up",
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 20,
              letterSpacing: 0,
            ))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
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
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 100),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 50,
                              child: Image.asset(
                                'assets/logo_final.png',
                                height: 60,
                              ),
                            ),
                            Text("YUREKA",
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  letterSpacing: 3,
                                ))),
                          ],
                        ),
                        SizedBox(height: 90),
                        googleSignUp(),
                        //SizedBox(height: 0),
                        linkedInSignUp(),
                        SizedBox(height: 5),
                        pswrdSignUp(),
                        SizedBox(height: 90),
                        Text("First time?",
                            style: GoogleFonts.robotoSlab(
                                textStyle: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.normal,
                              fontSize: 26,
                              letterSpacing: 0,
                            ))),
                        buildSignupBtn(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

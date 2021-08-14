import './Signup1.dart';
//import 'package:Yureka_login/account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isRememberMe = false;
  bool _passwordVisible;
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  Widget buildEmail() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 1, color: Colors.white),
      ),
      height: 60,
      child: Center(
          child: Text(
        "E-mail",
        style: GoogleFonts.robotoSlab(
            textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 18,
          letterSpacing: 0,
        )),
      )),
    );
  }

  Widget buildPassword() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 1, color: Colors.white),
      ),
      height: 60,
      child: Center(
        child: Text("Password",
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 18,
              letterSpacing: 0,
            ))),
      ),
    );
  }

  /* Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 14),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF707070),
                    blurRadius: 4,
                    offset: Offset(
                      0,
                      1,
                    ))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    }),
                hintText: "Password",
                hintStyle: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  letterSpacing: 0,
                ))),
          ),
        )
      ],
    );
  }*/

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Password pressed"),
        padding: EdgeInsets.only(right: 0),
        child: Text("Forgot Password?",
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.normal,
              fontSize: 16,
              letterSpacing: 0,
            ))),
      ),
    );
  }

  Widget buildRemember() {
    return Container(
      alignment: Alignment.centerLeft,
      //height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.white,
              activeColor: Color(0xFF48CAE4),
              onChanged: (value) {
                setState(() {
                  isRememberMe = value;
                });
              },
            ),
          ),
          Text("Remember me",
              style: GoogleFonts.robotoSlab(
                  textStyle: TextStyle(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.normal,
                fontSize: 16,
                letterSpacing: 0,
              )))
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      width: double.infinity,
      child: RaisedButton(
        elevation: 9,
        onPressed: () => print("pressed"),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        child: Text("LOG IN",
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              color: Color(0xFF707070),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0,
            ))),
      ),
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
                      SizedBox(height: 80),
                      buildEmail(),
                      SizedBox(height: 14),
                      buildPassword(),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 0,
                          ),
                          buildRemember(),
                          SizedBox(width: 30),
                          buildForgotPassBtn(),
                        ],
                      ),
                      buildLoginBtn(),
                      SizedBox(height: 40),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

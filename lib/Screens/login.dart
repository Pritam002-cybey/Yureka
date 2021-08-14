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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //SizedBox(height: 14),
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
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: "E-mail",
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
  }

  Widget buildPassword() {
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
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Password pressed"),
        padding: EdgeInsets.only(right: 0),
        child: Text("Forgot Password?",
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
              color: Color(0xFF707070),
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
                color: Color(0xFF707070),
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
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
      width: double.infinity,
      child: RaisedButton(
        elevation: 9,
        onPressed: () => print("Login Pressed"),
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
        onPressed: () => print("Sign Up Pressed"),
        child: Text("Sign Up",
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
              color: Colors.black,
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
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFFAFDFE),
                      Color(0xFFEBF9FC),
                      Color(0xFFD3F2F9),
                      Color(0xFFB2E9F4),
                      Color(0xFFADE8F4),
                      Color(0xFFA0E4F1),
                      Color(0xFF48CAE4),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("WELCOME BACK!",
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 3,
                          ))),
                      SizedBox(height: 80),
                      buildEmail(),
                      SizedBox(height: 14),
                      buildPassword(),
                      Row(
                        children: <Widget>[
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
                            color: Color(0xFF707070),
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

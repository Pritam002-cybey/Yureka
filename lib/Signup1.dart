import './Signup2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp1 extends StatefulWidget {
  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  //@override

  Widget addphoto() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: AssetImage('assets/user (3).png'),
            /*child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/user.png'),
                      fit: BoxFit.contain)),
            ),*/
            //backgroundImage: AssetImage(
            //"assets/user.png",
            //),
          ),
          Positioned(
            bottom: 10,
            right: 20,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.grey.shade600,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      //color: Colors.cyan.shade100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: GoogleFonts.robotoSlab(
                textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 18,
              letterSpacing: 0,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera),
                label: Text("Camera"),
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.image),
                label: Text("Gallery"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget nameTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan.shade50),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          fillColor: Colors.cyan.shade50, //hoverColor: Colors.amber,
          //hintText: "Name",
          // helperText: "tttt",
          labelText: "Name",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget contactTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          //hoverColor: Colors.cyan,
          // focusColor: Colors.cyan,
          fillColor: Colors.grey.shade100,
          //hintText: "Contact no.",
          labelText: "Contact no.",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget emailTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan.shade50),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          fillColor: Colors.cyan.shade50,
          labelText: "E-mail",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget countryTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          labelText: "Country",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget cityTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan.shade50),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          fillColor: Colors.cyan.shade50,
          labelText: "City/District",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget schoolTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          labelText: "School/College/University",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget degreeTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan.shade50),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          fillColor: Colors.cyan.shade50,
          labelText: "Degree",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget specializationTextfield() {
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.grey.shade400,
        primaryColorDark: Colors.grey.shade400,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(3),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          labelText: "School/College/University",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget buildContinueBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      width: double.infinity,
      child: RaisedButton(
        elevation: 9,
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => SignUp2()));
        },
        //},
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.cyan,
        child: Text("Continue",
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0,
            ))),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 402,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width, color: Colors.white,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage('assets/blue.png'),
                //   fit: BoxFit.fill)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  /*Container(
                    margin: EdgeInsets.only(top: 27),
                    height: 80,
                    width: 50,
                    child: Image.asset(
                      'assets/logo_final.png',
                      alignment: Alignment.center,
                      height: 80,
                    ),
                  ),*/
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text("Create Account,",
                          //textAlign: TextAlign.left,
                          //textDirection: TextDirection.ltr,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            color: Colors.cyan.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                            letterSpacing: 0,
                          ))),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text("Sign up to get started!",
                          //textAlign: TextAlign.left,
                          //textDirection: TextDirection.ltr,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 0,
                          ))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        //color: Colors.amber,
                        height: MediaQuery.of(context).size.height + 210,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            addphoto(),
                            SizedBox(
                              height: 17,
                            ),
                            nameTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            contactTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            emailTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            countryTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            cityTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            schoolTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            degreeTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            specializationTextfield(),

                            /*Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Upload your CV",
                                  textAlign: TextAlign.left,
                                  //textDirection: TextDirection.ltr,
                                  style: GoogleFonts.robotoSlab(
                                      textStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 0,
                                  )),
                                ),
                              ],
                            )*/
                            //chooseCVBtn(),
                            SizedBox(
                              height: 20,
                            ),
                            buildContinueBtn(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

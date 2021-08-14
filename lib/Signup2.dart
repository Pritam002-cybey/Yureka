import './account.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  //@override

  Widget aboutyouTextfield() {
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
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Something about you",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget expertiseTextfield() {
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
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Fields of Expertise",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget interestTextfield() {
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
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Fields of Interest",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget chooseCVBtn() {
    return Container(
      padding: EdgeInsets.only(right: 220, top: 10),
      width: double.infinity,
      child: RaisedButton(
        elevation: 9,
        onPressed: () => print("pressed"),
        //},
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.cyan.shade100,
        child: Text("Choose File",
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0,
            ))),
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
              context, new MaterialPageRoute(builder: (context) => Account()));
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

  String title = 'Date Picker';
  DateTime _date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1947),
      lastDate: DateTime(2040),
    );
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  Widget dobTextfield() {
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
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          labelText: "Date of Birth",
          //hintText: "DD - MM - YYYY",
          suffixIcon: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {
                setState(() {
                  _selectDate(context);
                  print(
                    _date.toString(),
                  );
                });
              }),
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.black54),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 65,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              /*Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/blue.png'),
                        fit: BoxFit.fill)),
              ),*/
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  /*Container(
                    margin: EdgeInsets.only(top: 27),
                    height: 30,
                    width: 50,
                    child: Image.asset(
                      'assets/logo_final.png',
                      alignment: Alignment.center,
                      height: 30,
                    ),
                  ),*/
                  //SizedBox(
                  //height: 15,
                  //),
                  /*Text("Almost There!",
                      //textAlign: TextAlign.left,
                      //textDirection: TextDirection.ltr,
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        letterSpacing: 3,
                      ))),*/
                  SizedBox(
                    height: 25,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        //color: Colors.amber,
                        height: MediaQuery.of(context).size.height + 14,
                        width: MediaQuery.of(context).size.width,
                        /*decoration: BoxDecoration(
                          //boxShadow: [
                          //new BoxShadow(
                          //color: Colors.black,
                          //blurRadius: 10.0,
                          //),
                          //],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          border: Border.all(width: 1, color: Colors.white),
                        ),*/
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Text("Almost There!",
                                //textAlign: TextAlign.left,
                                //textDirection: TextDirection.ltr,
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                  color: Colors.cyan.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 33,
                                  letterSpacing: 0,
                                ))),
                            SizedBox(
                              height: 27,
                            ),
                            aboutyouTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            dobTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            interestTextfield(),
                            SizedBox(
                              height: 17,
                            ),
                            expertiseTextfield(),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
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
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 0,
                                  )),
                                ),
                              ],
                            ),
                            chooseCVBtn(),
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

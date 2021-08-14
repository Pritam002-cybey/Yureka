import './chooseprofile.dart';
import './swipecards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //GestureDetector(
          //child:
          FlatButton(
        highlightColor: Colors.white,
        hoverColor: Colors.black12,
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => SwipeCards()));
        },
        child: Container(
          width: double.infinity,
          height: double.infinity, color: Colors.white,
          //decoration: BoxDecoration(
          //  image: DecorationImage(
          //    image: AssetImage('assets/acc.png'), fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage('assets/tk10.gif'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 130,
              ),
              Text(
                "ACCOUNT CREATED!",
                style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.normal,
                  fontSize: 33,
                  letterSpacing: 0,
                )),
              ),
              SizedBox(
                height: 20,
              ),
              /*Text(
                " Your account has been created successfully.",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                  letterSpacing: 0,
                )),
              ),*/
              SizedBox(
                height: 70,
              ),
              /*Text(
                " Touch anywhere on the screen to continue",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoSlab(
                    textStyle: TextStyle(
                  fontFamily: 'sans-serif',
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                  letterSpacing: 0,
                )),
              ),*/
              /*Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(color: Colors.cyan.shade700),
                child: FlatButton(
                  onPressed: () => Chooseprofile(),
                  child: Text("CONTINUE",
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
          //),
        ),
      ),
    );
  }
}

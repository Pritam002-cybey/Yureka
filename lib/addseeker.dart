import 'package:YUREKA/ideatorlist.dart';
import 'package:YUREKA/questionair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class addseeker extends StatefulWidget {
  @override
  _addseekerState createState() => _addseekerState();
}

// ignore: camel_case_types
class _addseekerState extends State<addseeker> {
  bool CheckboxValue1 = false;
  bool CheckboxValue2 = false;
  bool CheckboxValue3 = false;
  bool CheckboxValue4 = false;
  bool CheckboxValue5 = false;
  bool CheckboxValue6 = false;
  bool CheckboxValue7 = false;
  bool CheckboxValue8 = false;
  bool CheckboxValue9 = false;
  bool CheckboxValue10 = false;
  bool CheckboxValue11 = false;
  bool CheckboxValue12 = false;
  bool CheckboxValue13 = false;
  bool CheckboxValue14 = false;
  bool CheckboxValue15 = false;
  double _users = 0.0,
      // ignore: unused_field
      _expectedUsers = 0.0,
      // ignore: unused_field
      _cost = 0.0,
      // ignore: unused_field
      _market = 0.0,
      // ignore: unused_field
      _revenue = 0.0,
      _expectedRevenue = 0.0;
  void _onChanged(double users) {
    setState(() {
      _users = users;
    });
  }

  // ignore: unused_element
  void _onChanged1(double expectedusers) {
    setState(() {
      _expectedUsers = expectedusers;
    });
  }

  // ignore: unused_element
  void _onChanged2(double cost) {
    setState(() {
      _cost = cost;
    });
  }

  // ignore: unused_element
  void _onChanged3(double market) {
    setState(() {
      _market = market;
    });
  }

  // ignore: unused_element
  void _onChanged4(double revenue) {
    setState(() {
      _revenue = revenue;
    });
  }

  // ignore: unused_element
  void _onChanged5(double exprectedRevenue) {
    setState(() {
      _expectedRevenue = _expectedRevenue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: new BoxDecoration(
                /*image: DecorationImage(
                image: AssetImage('assets/Rectangle 33.png'),
                fit: BoxFit.fill,
              ),*/
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Colors.cyan[200]])),
            child: Column(children: [
              Expanded(
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "Adding Seeker",
                        style: GoogleFonts.oswald(
                          textStyle: TextStyle(
                            fontFamily: "Anton",
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
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Name :",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    fontFamily: "Anton",
                                    fontSize: 20,
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
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.greenAccent),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)))),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Email :",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    fontFamily: "Anton",
                                    fontSize: 20,
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
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.greenAccent),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)))),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Mobile No. :",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    fontFamily: "Anton",
                                    fontSize: 20,
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
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.greenAccent),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)))),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Seeker ID :",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    fontFamily: "Anton",
                                    fontSize: 20,
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
                                height: 10,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.greenAccent),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)))),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Seeker Applying for :",
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    fontFamily: "Anton",
                                    fontSize: 20,
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
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue1,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue1 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Machine Learning'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue2,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue2 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Artificial Intilligence'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue3,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue3 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('App Development'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue4,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue4 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Internet of Things'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue5,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue5 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Web Development'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue15,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue15 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Graphic Designing'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue6,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue6 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Data Science'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Seeker will be working :",
                                style: GoogleFonts.oswald(
                                  textStyle: TextStyle(
                                    fontFamily: "Anton",
                                    fontSize: 20,
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
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue7,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue7 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('OffShore'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue8,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue8 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('OnShore'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "Seeker Experience :",
                                  style: GoogleFonts.oswald(
                                    textStyle: TextStyle(
                                      fontFamily: "Anton",
                                      fontSize: 20,
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
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue9,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue9 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('0-6 months'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue10,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue10 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('6-12 months'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue11,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue11 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('1-2 years'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue12,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue12 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('3-5 years'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue13,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue13 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('5-10 years'),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    value: CheckboxValue14,
                                    onChanged: (bool value) {
                                      print(value);
                                      setState(() {
                                        CheckboxValue14 = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('10+ years'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 25),
                            child: Text(
                              'CONTINUE',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ideator_list()));
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )),
                  ],
                ),
              )
            ])));
  }
}

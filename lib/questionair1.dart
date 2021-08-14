import 'package:YUREKA/questionair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class questionair1 extends StatefulWidget {
  @override
  _questionair1State createState() => _questionair1State();
}

// ignore: camel_case_types
class _questionair1State extends State<questionair1> {
  bool CheckboxValue1 = false;
  bool CheckboxValue2 = false;
  bool CheckboxValue3 = false;
  bool CheckboxValue4 = false;
  bool CheckboxValue5 = false;
  bool CheckboxValue6 = false;
  bool CheckboxValue7 = false;
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
      child: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Center(
                child: Text(
                  "Progress Analysis",
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
                    Center(
                      child: Text(
                        "Is your business plan well documented ?",
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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.blue[900],
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          inactiveColor: Color(0xFF8D8E98),
                          min: 0.0,
                          max: 10.0,
                          value: _users,
                          onChanged: (double value) {
                            _onChanged(value);
                          }),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Strongly disagree'),
                        SizedBox(
                          width: 150,
                        ),
                        Text('Strongly Agree')
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
                        "How many people are in your team",
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
                    Center(
                      child: Text(
                        "currently",
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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.blue[900],
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          inactiveColor: Color(0xFF8D8E98),
                          min: 0.0,
                          max: 10.0,
                          value: _expectedUsers,
                          onChanged: (double value) {
                            _onChanged1(value);
                          }),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('0'),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          '3-5',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text('more than 10')
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
                        "Number of direct competitors",
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
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.blue[900],
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          inactiveColor: Color(0xFF8D8E98),
                          min: 0.0,
                          max: 10.0,
                          value: _cost,
                          onChanged: (double value) {
                            _onChanged2(value);
                          }),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('0'),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          '3-5',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text('more than 10')
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
                      "Do you have a registered IP ?",
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
                          value: !CheckboxValue1,
                          onChanged: (bool value) {
                            print(value);
                            setState(() {
                              CheckboxValue1 = !value;
                            });
                          },
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('YES'),
                      ],
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
                        Text('NO'),
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
                      "Do you have a personal investment ?",
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
                          value: !CheckboxValue2,
                          onChanged: (bool value) {
                            print(value);
                            setState(() {
                              CheckboxValue2 = !value;
                            });
                          },
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('YES'),
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
                        Text('NO'),
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
                        "Phase of product development you're",
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
                    Center(
                      child: Text(
                        "currently in ?",
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
                        Text('brainstorming and ideation'),
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
                        Text('research and planning'),
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
                        Text('concept development'),
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
                        Text('prototyping'),
                      ],
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
                        Text('product rollout and launch'),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => questionair()));
                },
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )),
        ],
      ),
    ));
  }
}

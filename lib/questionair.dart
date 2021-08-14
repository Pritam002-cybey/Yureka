import 'package:YUREKA/ideaadded.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

// ignore: camel_case_types
class questionair extends StatefulWidget {
  @override
  _questionairState createState() => _questionairState();
}

// ignore: camel_case_types
class _questionairState extends State<questionair> {
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
  void _onChanged5(double expectedRevenue) {
    setState(() {
      _expectedRevenue = expectedRevenue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.cyan[200]]),
        borderRadius: BorderRadius.circular(25.0),
      ),
      height: 1300,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "Progress Analysis",
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    fontFamily: "Anton",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              height: 1000,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 121,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              "Current Number of Users",
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
                                  fontFamily: "Anton",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
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
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              '3-5',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'more than 10k',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 120,
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Expected number of users after 5 year",
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
                                  fontFamily: "Anton",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
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
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              '3-5',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'more than 10k',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 120,
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Cost of acquisition",
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
                                  fontFamily: "Anton",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
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
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              '3-5',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'more than 10k',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 120,
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Present Market Share",
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
                                  fontFamily: "Anton",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
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
                              value: _market,
                              onChanged: (double value) {
                                _onChanged3(value);
                              }),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text('0%'),
                            SizedBox(
                              width: 160,
                            ),
                            Text(
                              '50%',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text('100%')
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 120,
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Average Revenue Per User",
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
                                  fontFamily: "Anton",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
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
                              value: _revenue,
                              onChanged: (double value) {
                                _onChanged4(value);
                              }),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              '3-5',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'more than 10k',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 120,
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Expected Revenue Per user in 5 year",
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
                                  fontFamily: "Anton",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.black,
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
                              value: _expectedRevenue,
                              onChanged: (double value) {
                                _onChanged5(value);
                              }),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(
                              '3-5',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              'more than 10k',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Text(
                'CONTINUE',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ideaadded()));
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    )));
  }
}

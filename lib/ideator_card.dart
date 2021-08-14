import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ideator_card extends StatefulWidget {
  @override
  _ideator_cardState createState() => _ideator_cardState();
}

class _ideator_cardState extends State<ideator_card> {
  //double brightness = 0.0;

  bool is_editing = false;
  var _organization;
  var _idea;
  var _usp = "Description";
  var _progress;
  var _competition;

  final organization = new TextEditingController();
  final idea = new TextEditingController();
  final usp = new TextEditingController();
  final progress = new TextEditingController();
  final competition = new TextEditingController();
  @override
  /* Widget build(BuildContext context) {
    return /* Slider  */ CupertinoSlider(
      activeColor: CupertinoColors.activeGreen,
      min: 0.0,
      max: 1.0,
      value: brightness,
      onChanged: (val) {
        Screen.setBrightness(brightness);
        setState(() {
          brightness = val;
        });
      },
    );
  }*/
  double rating = 0;
  void _onChanged(double users) {
    setState(() {
      rating = users;
    });
  }

  static double _lowerValue = 0.0;
  static double _upperValue = 10.0;

  RangeValues values = RangeValues(_lowerValue, _upperValue);
  @override
  Widget build(BuildContext context) {
    return
        //Padding(
        // padding: const EdgeInsets.only(left: 0),
        //child:
        Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "IDEA",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff4A4A4A),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          is_editing
              ? TextField(
                  controller: idea,
                  decoration: InputDecoration(
                      suffixIcon: Image(
                        image: AssetImage('assets/color-pencil.png'),
                      ),
                      hintText: 'Description',
                      border: InputBorder.none),
                )
              : Text(
                  'description',
                  style: TextStyle(color: Color(0xff707070), fontSize: 13),
                ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Competition",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff4A4A4A),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          is_editing
              ? TextField(
                  controller: competition,
                  decoration: InputDecoration(
                      suffixIcon: Image(
                        image: AssetImage('assets/color-pencil.png'),
                      ),
                      hintText: 'Description',
                      border: InputBorder.none),
                )
              : Text(
                  'description',
                  style: TextStyle(color: Color(0xff707070), fontSize: 13),
                ),
          SizedBox(
            height: 20,
          ),
          Text(
            "USP",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff4A4A4A),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          is_editing
              ? TextField(
                  controller: usp,
                  decoration: InputDecoration(
                      suffixIcon: Image(
                        image: AssetImage('assets/color-pencil.png'),
                      ),
                      hintText: 'Description',
                      border: InputBorder.none),
                )
              : Text(
                  'description',
                  style: TextStyle(color: Color(0xff707070), fontSize: 13),
                ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Progress",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff4A4A4A),
            ),
          ),
          Row(
            children: [
              is_editing
                  ? SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.blue[900],
                        overlayColor: Color(0x2987ceeb),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          inactiveColor: Color(0xFF8D8E98),
                          min: 0,
                          max: 10,
                          value: rating,
                          onChanged: (double value) {
                            _onChanged(value);
                          }))
                  : Text('Asset your Progress'),
              SizedBox(
                width: 69,
              ),
              IconButton(
                  color: Colors.cyanAccent.shade700,
                  highlightColor: Colors.cyan.shade50,
                  icon: is_editing
                      ? ImageIcon(
                          AssetImage("assets/correction@2x.png"),
                          size: 37,
                        )
                      : ImageIcon(
                          AssetImage("assets/edit@2x.png"),
                          size: 37,
                        ),
                  onPressed: () {
                    setState(() {
                      is_editing = !is_editing;
                    });
                  })
            ],
          )
        ],
      ),
    );
    //);
  }
}

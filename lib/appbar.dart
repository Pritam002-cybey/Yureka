import 'package:YUREKA/ideatorprofile.dart';
import 'package:YUREKA/message1.dart';
import 'package:YUREKA/swipecards.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => SwipeCards()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 80,
          ),
          Transform.scale(
            scale: 0.7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LiteRollingSwitch(
                value: true,
                colorOn: Colors.black45,
                colorOff: Colors.grey,
                iconOn: Icons.access_alarm,
                iconOff: null,
                textOn: "Seeker",
                textOff: "Ideator",
                onChanged: (bool position) {
                  print("The button is $position");
                },
              ),
            ),
          ),
          /*CustomSwitch(
                  value: isSwitched,
                  activeColor: Colors.cyan,
                  onChanged: (value) {
                    print("VALUE : $value");
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),*/
          SizedBox(
            width: 70,
          ),
          IconButton(
            highlightColor: Colors.cyan.shade50,
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Message1()));
            },
            icon: ImageIcon(
              AssetImage("assets/paper-plane.png"),
              size: 60,
              //color: Colors.cyan,
            ),
          )
        ],
      ),
      /*IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white),
          ),*/
      //],
      //),
    );
  }
}

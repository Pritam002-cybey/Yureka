//import 'package:circular_profile_avatar/circular_profile_avatar.dart';
//import 'package:Yureka_login/Seeker-profile2.dart';
//import 'package:Yureka_login/categoryselector.dart';
import 'package:YUREKA/customclipper.dart';
//import 'package:Yureka_login/message1.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
//import 'package:user_profile_ui_00/utils/custom_clipper.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //color: Colors.amber,
          alignment: Alignment.center,
          height: 390.0,
          child: Stack(
            children: <Widget>[
              //Container(),
              ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  alignment: Alignment.center,
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/blue.png"),
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RotatedBox(
                      quarterTurns: 3,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                              colors: <Color>[
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
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: const Text('Personal Details',
                              style: TextStyle(fontSize: 20)),
                        ),
                        //color: Colors.blueAccent,
                        //child: Text("Personal Details"),
                        //onPressed: null,
                      ),
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //mainAxisAlignment: MainAxisAlignment.start,
                        //children: <Widget>[
                        CircularProfileAvatar(
                          null, child: Image.asset("assets/sam.jpg"),
                          //"assets/sam.jpg",
                          borderWidth: 4.0,
                          radius: 60.0,
                        ),
                        //],

                        SizedBox(height: 4.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              width: 50,
                              //height: 10,
                            ),
                            Text(
                              "Jessica Park  ",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //SizedBox(width: 10),
                            Text(
                              "25",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 42,
                            ),
                            Text(
                              "Above all, a keen learner!",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/linkedin@2x.png")),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/gmail.png")),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //],
        //);
        /* SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 160,
            ),
            Container(
                height: 40,
                width: 40,
                child: Image.asset("assets/linkedin@2x.png")),
            SizedBox(
              width: 20,
            ),
            Container(
                height: 40, width: 40, child: Image.asset("assets/google.png")),
          ],
        ),*/
        //CategorySelector(),

        /*Row(
          children: <Widget>[
            SizedBox(
              width: 358,
            ),
            IconButton(
              color: Colors.cyanAccent.shade700,
              highlightColor: Colors.cyan.shade50,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => SeekerProf2()));
              },
              icon: ImageIcon(
                AssetImage("assets/edit@2x.png"),
                size: 25,
                //color: Colors.cyan,
              ),
            )
          ],
        ),*/
      ],
    );
  }
}

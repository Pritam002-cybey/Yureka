import 'package:Yureka_login/Seeker-profile.dart';
import 'package:Yureka_login/message1.dart';
import 'package:Yureka_login/swipe_container.dart';
import 'package:flutter/material.dart';
import 'package:tinder_swipecard/cards.dart';
import 'package:tinder_swipecard/matches.dart';
import 'package:tinder_swipecard/tinder_swipecard.dart';
//import 'package:tinder_spotify/components/container.dart';

class SwipeCard extends StatefulWidget {
  static const String swipeCard = 'swipe_card';
  @override
  _SwipeCardState createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: new EdgeInsets.all(11.0),
          icon: Image.asset('assets/profile-user.png'),
          // hoverColor: Colors.black,
          iconSize: 40,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => SeekerProf1()));
          },
        ),
        /* title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //  width: 10,
            //),
            //IconButton(
            //alignment: Alignment.topLeft,
            //icon: Image.asset('assets/profile-user.png'),
            // onPressed: null,
            // ),
            // SizedBox(
            //  width: 90,
            //),
            IconButton(
              //alignment: Alignment.center,
              icon: Image.asset('assets/logo_final.png'),
              onPressed: null,
            ),
            //SizedBox(
            //width: 70,
            //),
            IconButton(
              icon: Image.asset('assets/paper-plane.png'),
              onPressed: null,
            ),
            // SizedBox(
            //  width: 10,
            // ),
          ],
        ),*/
        title: Row(children: [
          SizedBox(
            width: 100,
          ),
          IconButton(
            //alignment: Alignment.center,
            icon: Image.asset('assets/bluelogo.png'),
            focusColor: Colors.amber,
            iconSize: 46,
            onPressed: null,
          ),
        ]),
        actions: [
          IconButton(
            icon: Image.asset('assets/telegram.png'),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => Message1()));
            },
          ),
        ],
      ),
      body: Stack(fit: StackFit.expand, overflow: Overflow.visible, children: [
        TinderSwipeCard(
          demoProfiles: demoProfiles,
          myCallback: (decision) {},
        ),
      ]),
    );
  }
}

//dummy data
final List<Profile> demoProfiles = [
  Profile(photos: [
    "https://yureka.s3.ap-south-1.amazonaws.com/organization1.jpeg",
    "https://yureka.s3.ap-south-1.amazonaws.com/organization2.png",
    "https://yureka.s3.ap-south-1.amazonaws.com/images.jpeg"
    // "https://unsplash.com/photos/JVZTtdybC8s/download?force=true&w=640",
    //"https://unsplash.com/photos/0oRefidSNKc/download?force=true&w=640",
    //"https://unsplash.com/photos/MQ9U2GFnnDc/download?force=true&w=640",
  ], name: "Organization1", bio: "Chatting app"
      //"Do you believe in love at first sight – or should you swipe right again?",
      ),
  Profile(
    photos: [
      "https://yureka.s3.ap-south-1.amazonaws.com/download.png",
      "https://yureka.s3.ap-south-1.amazonaws.com/organization1.jpeg",
      "https://yureka.s3.ap-south-1.amazonaws.com/organization2.png"
      //"https://unsplash.com/photos/bYzllm-pD1k/download?force=true&w=640",
      //"https://unsplash.com/photos/UrYLlff6U60/download?force=true&w=640",
    ],
    name: "Organization2",
    bio: "Dating app",
  ),
  Profile(
    photos: [
      "https://yureka.s3.ap-south-1.amazonaws.com/download.png",
      // "https://yureka.s3.ap-south-1.amazonaws.com/ui-ux-banner.png",
      "https://yureka.s3.ap-south-1.amazonaws.com/organization1.jpeg"
      //"https://unsplash.com/photos/pvWvjHdX8O0/download?force=true&w=640",
      //"https://unsplash.com/photos/p5SXRTjaPTc/download?force=true&w=640",
    ],
    name: "Organization3",
    bio: "Gaming app",
  ),
];

class TinderSwipeCard extends StatefulWidget {
  TinderSwipeCard({
    Key key,
    this.heading,
    this.text,
    this.title,
    this.demoProfiles,
    this.myCallback,
  });
  final String heading;
  final String text;
  final String title;
  final List demoProfiles;

  final Function(Decision) myCallback;

  @override
  _TinderSwipeCardState createState() => _TinderSwipeCardState();
}

class _TinderSwipeCardState extends State<TinderSwipeCard> {
  Match match = new Match();

  Widget _buildBottomBar(MatchEngine matchEngine) {
    return BottomAppBar(
      color: Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    final MatchEngine matchEngine = new MatchEngine(
        matches: widget.demoProfiles.map((final profile) {
      return Match(profile: profile);
    }).toList());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Stack(
          children: [
            CardStack(
              matchEngine: matchEngine,
              onSwipeCallback: (match) {
                widget.myCallback(match);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(matchEngine),
    );
  }
}
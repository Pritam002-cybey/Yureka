//import 'package:YUREKA/Screens/splashscreen.dart';
//import 'package:Yureka_login/Login.dart';
//import 'package:Yureka_login/account.dart';
//import 'package:Yureka_login/chooseprofile.dart';
//import 'package:Yureka_login/Signup1.dart';
//import 'package:Yureka_login/Signup2.dart';
//import 'package:Yureka_login/account.dart';

import 'package:YUREKA/Signup1.dart';
import 'package:YUREKA/addseeker.dart';
import 'package:YUREKA/ideaadded.dart';
import 'package:YUREKA/ideator2.dart';
import 'package:YUREKA/ideator3.dart';
import 'package:YUREKA/ideator_filter.dart';
import 'package:YUREKA/ideatorlist.dart';
import 'package:YUREKA/ideatorprofile.dart';
import 'package:YUREKA/questionair.dart';
import 'package:YUREKA/stack_container.dart';

import './splashscreen.dart';
import './swipecards.dart';
import 'package:flutter/material.dart';
import 'package:YUREKA/questionair1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:HomePage(),
      home: StackContainer(),
    );
  }
}

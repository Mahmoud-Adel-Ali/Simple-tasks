import 'package:flutter/material.dart';

abstract class Styles {
    String fontFamily = 'myFont';
  static TextStyle textStyle25 =const  TextStyle(
    fontFamily: 'myFont',
    fontSize: 25,
  );
  static TextStyle textStyle35 =const  TextStyle(
    fontFamily: 'myFont',
    fontSize: 35,
    fontWeight: FontWeight.w100,
    color: Color.fromARGB(255, 147, 146, 146)
  );
  static TextStyle numStyle =const  TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w300,
  );
  static TextStyle buttonTextStyle =const  TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static TextStyle greenText27 =const  TextStyle(
    fontSize: 27,
    color: Color.fromARGB(255, 27, 109, 30),
    fontFamily: 'myFont'

  );
  
}

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpandedExample(),
    );
  }
}
class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
              height: 150,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              height: 150,
            ),
          ),
          Expanded(
            flex: 1,// by default  =  1
            child: Container(
              color: Colors.green,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
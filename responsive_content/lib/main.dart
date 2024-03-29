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
    return Scaffold(
      body: Column(
        children: [
          const Flexible(
              child: FittedBox(
                  child: Icon(
            Icons.ac_unit,
            size: 300,
          ))),
          Container(
            color: Colors.amber,
            height: 150,
          ),
          Expanded(
            child: Container(
              color: Colors.black12,
              height: 150,
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(Icons.abc),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            height: 150,
          ),
        ],
      ),
    );
  }
}

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
      home: AspecratioExampl(),
    );
  }
}

class AspecratioExampl extends StatelessWidget {
  const AspecratioExampl({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: AspectRatio(
          aspectRatio: 1/1,// width / height
          child: Container(
            color: Colors.amber,
            width: MediaQuery.sizeOf(context).width,
            // height: 100,
          ),
        ),
      ),

    );
  }
}
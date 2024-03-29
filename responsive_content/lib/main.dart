import 'dart:developer';

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
      home: HomeVeiw(),
    );
  }
}

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    log(height.toString());
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: height * 0.3,
          width: 200,
          color: Colors.amber,
        ),
        Container(
          height: height * 0.3,
          width: 200,
          color: Colors.black,
        ),
        Container(
          height: height * 0.3,
          width: 200,
          color: Colors.green,
        ),
      ],
    ));
  }
}

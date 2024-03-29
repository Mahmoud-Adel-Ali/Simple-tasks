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

class ExpandedExample extends StatefulWidget {
  const ExpandedExample({super.key});

  @override
  State<ExpandedExample> createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {
  var img = 'https://avatars.githubusercontent.com/u/141450980?v=4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return FittedBox(child: Image.network(img));
        },
      ),
    );
  }
}

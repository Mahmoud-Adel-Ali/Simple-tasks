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
      home: LayoutBuilderExample(),
    );
  }
}

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MobileLayout(),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            margin: const EdgeInsets.all(5),
            child: ListTile(
              title: Text("${index + 1}"),
            ),
          );
        },
      ),
    );
  }
}

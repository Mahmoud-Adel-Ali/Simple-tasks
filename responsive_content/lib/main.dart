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
      home: IntrinsicExample(),
    );
  }
}

class IntrinsicExample extends StatelessWidget {
  const IntrinsicExample({super.key});

  /// Intrinsic Widgets : Intrinsic Height
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: const Column(
                    children: [
                      Text("Mahmoud"),
                      Text("Mahmoud"),
                      Text("Mahmoud"),
                      Text("Mahmoud"),
                      Text("Mahmoud"),
                      Text("Mahmoud"),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

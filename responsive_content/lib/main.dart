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
    return Scaffold(
      body: LayoutBuilder(builder: (context, constrains) {
        log(constrains.maxWidth.toString());
        if (constrains.maxWidth <= 450) {
          return const MobileLayout();
        } else {
          return const DesktopLayout();
        }
      }),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  currentIndex = index + 1;
                  setState(() {});
                },
                child: Container(
                  color: Colors.amber,
                  margin: const EdgeInsets.all(5),
                  child: ListTile(
                    title: Text("${index + 1}"),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
            child: Center(
              child: Text(currentIndex.toString()),
            ))
      ],
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

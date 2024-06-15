import 'package:flutter/material.dart';
import 'package:women_task/home_view.dart';

void main() {
  runApp(const Women());
}

class Women extends StatelessWidget {
  const Women({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

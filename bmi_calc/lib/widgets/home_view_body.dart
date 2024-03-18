import 'package:bmi_calc/widgets/button_section.dart';
import 'package:bmi_calc/widgets/gender_section.dart';
import 'package:bmi_calc/widgets/slider_section.dart';
import 'package:bmi_calc/widgets/third_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
   HomeViewBody({super.key});

  bool isMale = true;

  int personHeight = 120;

  int wight = 50;

  int age = 25;

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
             GenderSection(),
            const SizedBox(height: 20),
             SliderSection(),
            const SizedBox(height: 20),
             ThirdSection(),
            const SizedBox(height: 20),
            ButtonSection(sWidth: sWidth, isMale: isMale, age: age, personHeight: personHeight, wight: wight)
          ],
        ),
      ),
    );
  }
}



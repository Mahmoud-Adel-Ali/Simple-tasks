import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:bmi_calc/views/calc_view.dart';
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
    required this.sWidth,
    required this.isMale,
    required this.age,
    required this.personHeight,
    required this.wight,
  });

  final double sWidth;
  final bool isMale;
  final int age;
  final int personHeight;
  final int wight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: sWidth * 0.9,
      alignment: Alignment.center,
      color: kPinkColor,
      child: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CalculatorView(),
              ),
            );
          },
          child: Text(
            'Calculate Your BMI',
            style: Styles.buttonTextStyle,
          )),
    );
  }
}

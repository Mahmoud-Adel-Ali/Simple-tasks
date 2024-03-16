import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:bmi_calc/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title:  Text("BMI Calculator",style: Styles.textStyle25,),
        centerTitle: true,
      ),
      body: const HomeViewBody(),
    );
  }
}
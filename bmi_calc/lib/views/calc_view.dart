import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:bmi_calc/manager/age_and_wight/age_and_wight_cubit.dart';
import 'package:bmi_calc/manager/gender/gender_cubit.dart';
import 'package:bmi_calc/manager/slider/slider_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "BMI Calculator",
          style: Styles.textStyle25,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                "Your Result",
                style: Styles.textStyle35.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 25),
            const CalcViewSection2(),
            const SizedBox(height: 25),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.9,
              alignment: Alignment.center,
              color: kPinkColor,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Re-Calculate Your BMI',
                    style: Styles.buttonTextStyle,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class CalcViewSection2 extends StatelessWidget {
  const CalcViewSection2({super.key});

  // final int age;
  // final int wight;
  @override
  Widget build(BuildContext context) {
    final int hieght =
        BlocProvider.of<SliderCubit>(context).current_person_heigt;
    final wight =
        BlocProvider.of<AgeAndWightCubit>(context).current_person_wight;
    final age = BlocProvider.of<AgeAndWightCubit>(context).current_person_age;
    String getClassification(double bmi) {
      if (bmi < 16) {
        return "Severe Thinness";
      } else if (bmi <= 17) {
        return "Moderate Thinness";
      } else if (bmi <= 18.5) {
        return "Mild Thinness";
      } else if (bmi <= 25) {
        return "Normal";
      } else if (bmi <= 30) {
        return "Overweight";
      } else if (bmi <= 35) {
        return "Obese Class I";
      } else if (bmi <= 40) {
        return "Obese Class II";
      } else {
        return "Obese Class II";
      }
    }

    String getBMI(double bmi) {
      if (bmi < 16) {
        return "< 16";
      } else if (bmi <= 17) {
        return "16 - 17";
      } else if (bmi <= 18.5) {
        return "17 - 18.5";
      } else if (bmi <= 25) {
        return "18.5 - 25	";
      } else if (bmi <= 30) {
        return "25 - 30	";
      } else if (bmi <= 35) {
        return "30 - 35";
      } else if (bmi <= 40) {
        return "35 - 40";
      } else {
        return "> 40";
      }
    }

    final myBmi = ((703 * hieght) / (wight * wight));
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: kSecondryCoclor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            BlocProvider.of<GenderCubit>(context).current_person_is_male
                ? "Male"
                : "Femal",
            style: Styles.textStyle25,
          ),
          Text(
            getClassification(myBmi),
            style: Styles.greenText27,
          ),
          Text((myBmi).toString().substring(0, 5), style: Styles.numStyle),
          Column(
            children: [
              Text(
                "${getClassification(myBmi)} BMI range",
                style: Styles.textStyle25
                    .copyWith(fontWeight: FontWeight.w200, color: Colors.grey),
              ),
              Text(
                "${getBMI(myBmi)} ",
                style: Styles.textStyle25
                    .copyWith(fontWeight: FontWeight.w200, color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "You have a ${getClassification(myBmi)}",
                style: Styles.greenText27,
              ),
              Text(
                "body weight ${myBmi < 35 ? ", good job" : ''}",
                style: Styles.greenText27,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

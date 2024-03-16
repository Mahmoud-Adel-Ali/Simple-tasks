import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView(
      {super.key,
      required this.gender,
      required this.age,
      required this.hieght,
      required this.wight});
  final String gender;
  final int age;
  final int hieght;
  final int wight;
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
            const CalcViewSection1(),
            const SizedBox(height: 25),
            CalcViewSection2(
                gender: gender, age: age, hieght: hieght, wight: wight),
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

class CalcViewSection1 extends StatelessWidget {
  const CalcViewSection1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      width: double.infinity,
      child: Text(
        "Your Result",
        style: Styles.textStyle35.copyWith(color: Colors.white),
      ),
    );
  }
}

class CalcViewSection2 extends StatefulWidget {
  const CalcViewSection2(
      {super.key,
      required this.gender,
      required this.age,
      required this.hieght,
      required this.wight});
  final String gender;
  final int age;
  final int hieght;
  final int wight;
  @override
  State<CalcViewSection2> createState() => _CalcViewSection2State();
}

class _CalcViewSection2State extends State<CalcViewSection2> {
  @override
  Widget build(BuildContext context) {
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

    final myBmi = ((703 * widget.hieght) / (widget.wight * widget.wight));
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
            widget.gender,
            style: Styles.textStyle25,
          ),
          Text(
            getClassification(myBmi),
            style: Styles.greenText27,
          ),
          Text((myBmi).toString().substring(0,5), style: Styles.numStyle),
          Column(
            children: [
              Text(
                "${getClassification(myBmi)} BMI range",
                style: Styles.textStyle25.copyWith(
                    fontWeight: FontWeight.w200, color: Colors.grey),
              ),
              Text(
                "${getBMI(myBmi)} ",
                style: Styles.textStyle25.copyWith(
                    fontWeight: FontWeight.w200, color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "You have a ${getClassification(myBmi)}",
                style: Styles.greenText27,
              ),Text(
                "body weight ${myBmi<35?", good job":''}",
                style: Styles.greenText27,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

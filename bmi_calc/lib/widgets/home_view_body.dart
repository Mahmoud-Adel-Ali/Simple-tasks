import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:bmi_calc/views/calc_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if (!isMale) {
                      setState(() {
                        isMale = true;
                      });
                    }
                  },
                  child: Container(
                    height: 210,
                    width: sWidth / 2.2,
                    decoration: BoxDecoration(
                        color: isMale ? kPinkColor : kSecondryCoclor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.male, size: 120),
                        Text("Male", style: Styles.textStyle25)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (isMale) {
                      setState(() {
                        isMale = false;
                      });
                    }
                  },
                  child: Container(
                    height: 210,
                    width: sWidth / 2.2,
                    decoration: BoxDecoration(
                        color: !isMale ? kPinkColor : kSecondryCoclor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.female, size: 120),
                        Text("Female", style: Styles.textStyle25)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kSecondryCoclor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Height",
                    style: Styles.textStyle35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        personHeight.toString(),
                        style: Styles.numStyle,
                      ),
                      Text(
                        " cm",
                        style: Styles.textStyle35.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Slider(
                      inactiveColor: Colors.grey,
                      activeColor: Colors.white,
                      thumbColor: kPinkColor,
                      value: personHeight.toDouble(),
                      max: 250,
                      min: 0,
                      onChanged: (value) {
                        setState(() {
                          personHeight = value.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 230,
                  width: sWidth / 2.2,
                  decoration: BoxDecoration(
                      color: kSecondryCoclor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Wight", style: Styles.textStyle35),
                      Text(wight.toString(), style: Styles.numStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: IconButton(
                              onPressed: () {
                                wight++;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: IconButton(
                              onPressed: () {
                                if (wight > 1) {
                                  wight--;
                                  setState(() {});
                                }
                              },
                              icon: const Icon(
                                Icons.horizontal_rule,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 230,
                  width: sWidth / 2.2,
                  decoration: BoxDecoration(
                      color: kSecondryCoclor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Age", style: Styles.textStyle35),
                      Text(age.toString(), style: Styles.numStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: IconButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: IconButton(
                              onPressed: () {
                                if (age > 1) {
                                  age--;
                                  setState(() {});
                                }
                              },
                              icon: const Icon(
                                Icons.horizontal_rule,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 70,
              width: sWidth * 0.9,
              alignment: Alignment.center,
              color: kPinkColor,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CalculatorView(
                          gender: isMale ? "Male" : "Female",
                          age: age,
                          hieght: personHeight,
                          wight: wight,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Calculate Your BMI',
                    style: Styles.buttonTextStyle,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

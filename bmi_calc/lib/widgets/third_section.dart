import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:bmi_calc/manager/age_and_wight/age_and_wight_cubit.dart';
import 'package:bmi_calc/manager/age_and_wight/age_and_wight_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdSection extends StatelessWidget {
  ThirdSection({super.key});

  // int wight = 50;

  // int age = 25;

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;
    final ageAndWightProvider = BlocProvider.of<AgeAndWightCubit>(context);

    return BlocBuilder<AgeAndWightCubit, AgeAndWightState>(
      builder: (context, state) {
        return Row(
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
                  Text(ageAndWightProvider.current_person_wight.toString(),
                      style: Styles.numStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: kPrimaryColor,
                        child: IconButton(
                          onPressed: () {
                            ageAndWightProvider.wightPlusOne();
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
                            if (ageAndWightProvider.current_person_wight > 1) {
                              ageAndWightProvider.wightMinusOne();
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
                  Text(ageAndWightProvider.current_person_age.toString(),
                      style: Styles.numStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: kPrimaryColor,
                        child: IconButton(
                          onPressed: () {
                            ageAndWightProvider.agePlusOne();
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
                            if (ageAndWightProvider.current_person_age > 1) {
                              ageAndWightProvider.ageMinusOne();
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
        );
      },
    );
  }
}

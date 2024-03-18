import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:bmi_calc/manager/gender/gender_cubit.dart';
import 'package:bmi_calc/manager/gender/gender_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSection extends StatelessWidget {
  GenderSection({super.key});

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;

    return BlocConsumer<GenderCubit, GenderState>(
      listener: (context, state) {
        if (state is IsMale) {
          isMale = true;
        } else if (state is IsFemale) {
          isMale = false;
        }
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                BlocProvider.of<GenderCubit>(context).selectMale();
              },
              child: Container(
                height: 210,
                width: sWidth / 2.2,
                decoration: BoxDecoration(
                    color: state is IsMale ? kPinkColor : kSecondryCoclor,
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
                BlocProvider.of<GenderCubit>(context).selectFemale();
              },
              child: Container(
                height: 210,
                width: sWidth / 2.2,
                decoration: BoxDecoration(
                    color: state is IsFemale ? kPinkColor : kSecondryCoclor,
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
        );
      },
    );
  }
}

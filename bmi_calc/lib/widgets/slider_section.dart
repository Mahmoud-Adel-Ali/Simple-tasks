import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/core/text_styles.dart';
import 'package:bmi_calc/manager/slider/slider_cubit.dart';
import 'package:bmi_calc/manager/slider/slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderSection extends StatelessWidget {
  SliderSection({super.key});

  int personHeight = 120;

  @override
  Widget build(BuildContext context) {
    final sliderProvider = BlocProvider.of<SliderCubit>(context);
    return BlocBuilder<SliderCubit, SliderState>(
      builder: (context, state) {
        return Container(
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
                    sliderProvider.current_person_heigt.toString(),
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
                  value: sliderProvider.current_person_heigt.toDouble(),
                  max: 250,
                  min: 0,
                  onChanged: (value) {
                    sliderProvider.heightIsChanged(value.toInt());
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:bmi_calc/constant.dart';
import 'package:bmi_calc/manager/age_and_wight/age_and_wight_cubit.dart';
import 'package:bmi_calc/manager/gender/gender_cubit.dart';
import 'package:bmi_calc/manager/slider/slider_cubit.dart';
import 'package:bmi_calc/views/home_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GenderCubit(),
        ),
        BlocProvider(
          create: (context) => SliderCubit(),
        ),
        BlocProvider(
          create: (context) => AgeAndWightCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        home: const HomeView(),
      ),
    );
  }
}

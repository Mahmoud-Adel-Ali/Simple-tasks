import 'package:bloc/bloc.dart';
import 'package:bmi_calc/manager/slider/slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit() : super(SliderInitial());

  int current_person_heigt = 120;
  void heightIsChanged(int newHeight) {
    current_person_heigt = newHeight;
    emit(SliderChanged());
  }
}

import 'package:bloc/bloc.dart';
import 'package:bmi_calc/manager/age_and_wight/age_and_wight_state.dart';

class AgeAndWightCubit extends Cubit<AgeAndWightState> {
  AgeAndWightCubit() : super(AgeAndWightInitial());
  int current_person_age = 25;
  int current_person_wight = 50;
  void agePlusOne() {
    current_person_age++;
    emit(AgeChanged());
  }

  void ageMinusOne() {
    current_person_age--;
    emit(AgeChanged());
  }

  void wightPlusOne() {
    current_person_wight++;
    emit(WightChanged());
  }

  void wightMinusOne() {
    current_person_wight--;
    emit(WightChanged());
  }
}

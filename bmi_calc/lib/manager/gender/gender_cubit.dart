import 'package:bloc/bloc.dart';
import 'package:bmi_calc/manager/gender/gender_state.dart';

class GenderCubit extends Cubit<GenderState> {
  GenderCubit() : super(GenderInitial());
  bool current_person_is_male = true;

  void selectMale() {
    current_person_is_male = true;
    emit(IsMale());
  }

  void selectFemale() {
    current_person_is_male = false;
    emit(IsFemale());
  }
}

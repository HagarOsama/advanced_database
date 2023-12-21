import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/core/api/reset_api.dart';
import 'package:hospital/core/custom%20cubit/rebuild/rebuild_states.dart';
import 'package:hospital/models/patient_model.dart';

class RebuildCubit extends Cubit<RebuildStates> {
  RebuildCubit() : super(InitState());

  static RebuildCubit get(BuildContext context) {
    return BlocProvider.of<RebuildCubit>(context);
  }

  rebuild() {
    emit(UpdateState());
  }

  bool isSearching = false;
  List<PatientModel> searchPatienReults = [];

  void search(String value) {
    if (value == "") {
      isSearching = false;
      rebuild();
    } else {
      searchPatienReults = ResetApi.patients
          .where((element) => element.name.toLowerCase().contains(value))
          .toList();
      isSearching = true;
      rebuild();
    }
  }
}

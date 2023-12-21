import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/core/api/reset_api.dart';
import 'package:hospital/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:hospital/core/custom%20cubit/rebuild/rebuild_states.dart';
import 'package:hospital/core/transtion/animated_navigation.dart';
import 'package:hospital/screens/patient_details.dart';
import 'package:hospital/widgets/light_text_field.dart';
import 'package:hospital/widgets/logo.dart';
import 'package:hospital/widgets/p_list.dart';

class Patients extends StatelessWidget {
  Patients({Key? key}) : super(key: key);

late RebuildCubit cubit ;
  @override
  Widget build(BuildContext context) {
    ResetApi.getPAtients(context);
    cubit = RebuildCubit.get(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Logo(padding: 1,),
            LightTextField(
              hintText: "Search",
              icon: Icons.search,
            ),
            BlocBuilder<RebuildCubit, RebuildStates>(
              builder: (context, state) {
                if (cubit.isSearching) {
                  return PatientsList(patients: cubit.searchPatienReults);
                }
              return PatientsList(patients: ResetApi.patients);
            })
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:hospital/core/custom%20cubit/rebuild/rebuild_states.dart';
import 'package:hospital/screens/add_patinet.dart';

class PickDate extends StatelessWidget {
  PickDate({Key? key,}) : super(key: key);



  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked !=  AddPatientScreen.birthDate) {
       AddPatientScreen.birthDate = picked;
      // ignore: use_build_context_synchronously
      RebuildCubit.get(context).rebuild();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RebuildCubit,RebuildStates>(
      builder: (context,state) {
        return ListTile(
          title: const Text('Birth Date'),
          contentPadding: const EdgeInsets.only(left: 0),
          subtitle:  AddPatientScreen.birthDate == null
              ? const Text('Select a date')
              : Text('${ AddPatientScreen.birthDate!.toLocal()}'),
          onTap: () {
            selectDate(context);
          },
        );
      }
    );
  }
}

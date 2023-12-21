import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:hospital/screens/add_patinet.dart';

import '../core/custom cubit/rebuild/rebuild_states.dart';

class GenderMenue extends StatelessWidget {
  GenderMenue({
    Key? key,
  }) : super(key: key);
  final List<String> genders = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RebuildCubit, RebuildStates>(builder: (context, state) {
      return DropdownButtonFormField<String>(
        value: AddPatientScreen.gender,
        decoration: const InputDecoration(
          labelText: 'Gender',
        ),
        items: genders.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          AddPatientScreen.gender = value!;
          RebuildCubit.get(context).rebuild();
        },
      );
    });
  }
}

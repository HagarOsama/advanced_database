import 'package:flutter/material.dart';
import 'package:hospital/models/patient_model.dart';

import '../core/transtion/animated_navigation.dart';
import '../screens/patient_details.dart';

class PatientsList extends StatelessWidget {
  PatientsList({Key? key, required this.patients}) : super(key: key);
  List<PatientModel> patients;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: patients.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(patients[index].name),
              leading: Image.asset(
                  patients[index].gender.toLowerCase() == "male"
                      ? "images/man_vector.png"
                      : "images/women_vector.jpg"),
              onTap: () {
                animatedPush(context, PatientDetails(patient: patients[index]));
              },
            ),
          );
        },
      ),
    );
  }
}

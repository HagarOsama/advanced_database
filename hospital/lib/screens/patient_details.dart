import 'package:flutter/material.dart';
import 'package:hospital/core/style/boxdecuration_style.dart';
import 'package:hospital/models/patient_model.dart';
import 'package:hospital/widgets/information.dart';

class PatientDetails extends StatelessWidget {
  PatientDetails({Key? key, required this.patient}) : super(key: key);
  PatientModel patient;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            margin: const EdgeInsets.all(20),
            decoration: circularImageDecoration(
                radius: 40,
                url: patient.gender.toLowerCase() == "male"
                    ? "images/man_vector.png"
                    : "images/women_vector.jpg"),
          ),
          Information(title: "Name", value: patient.name),
          Information(title: "Gender", value: patient.gender),
          Information(title: "Address", value: patient.address),
          Information(title: "Disease", value: patient.disease) 
        ],
      ),
    );
  }
}

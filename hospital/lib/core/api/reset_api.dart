import 'dart:convert';

import 'package:hospital/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:hospital/core/toast.dart';
import 'package:hospital/core/transtion/animated_navigation.dart';
import 'package:hospital/models/patient_model.dart';
import 'package:hospital/screens/home.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class ResetApi {
  static Uri url =
      Uri.parse('http://192.168.1.6/ad_DB_project/get_patients.php');
  static Map map = {};
  static List<PatientModel> patients = [];

  static void getPAtients(BuildContext context) async {
    patients.clear();
    try {
      var response = await http.get(url);
      List resbody = jsonDecode(response.body);

      if (response.statusCode == 200) {
        for (Map<String, dynamic> patient in resbody) {
          patients.add(PatientModel.fromJSON(patient));
        }
        // ignore: use_build_context_synchronously
        RebuildCubit.get(context).rebuild();
      } else {
        print('Failed to reset API. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred while resetting API: $e');
    }
  }

  static void addPatient(String name, String gender, String address,
      DateTime? birthDate, String disease, BuildContext context) async {
    final url = Uri.parse('http://192.168.1.6/ad_DB_project/add_patient.php');
    if (name == '' ||
        gender == '' ||
        address == '' ||
        disease == '' ||
        birthDate == null) {
      MyToast("fill all feilds", context);
    } else {
      var params = {
        'name': name,
        'gender': gender,
        'address': address,
        'birth_date': "${birthDate.year}-${birthDate.month}-${birthDate.day}",
        'disease': disease,
      };

      var response = await http.post(url, body: params);

      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        MyToast("Patient added successfully.", context);
        // ignore: use_build_context_synchronously
        animatedPush(context, const Home());
      } else {
        // ignore: use_build_context_synchronously
        MyToast("Error adding patient: ${response.body}.", context);
      }
    }
  }
}

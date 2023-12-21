import 'package:flutter/material.dart';
import 'package:hospital/core/api/reset_api.dart';
import 'package:hospital/widgets/gender_menue.dart';
import 'package:hospital/widgets/logo.dart';
import 'package:hospital/widgets/pick_date.dart';

class AddPatientScreen extends StatelessWidget {
  AddPatientScreen({Key? key}) : super(key: key);

  String name = '';
 static String gender = 'Male';
  String address = '';
 static DateTime? birthDate;
  String disease = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Logo(),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
             GenderMenue(),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
                onChanged: (value) {
                  address = value;
                },
              ),
              PickDate(),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Disease',
                ),
                onChanged: (value) {
                  disease = value;
                },
              ),
              const SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      ResetApi.addPatient(
                          name, gender, address, birthDate, disease, context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Colors.cyan, // Change the button color here
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Add Patient',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

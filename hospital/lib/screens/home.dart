import 'package:flutter/material.dart';
import 'package:hospital/core/api/reset_api.dart';
import 'package:hospital/core/transtion/animated_navigation.dart';
import 'package:hospital/screens/add_patinet.dart';
import 'package:hospital/screens/patients.dart';
import 'package:hospital/widgets/logo.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Logo(),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.cyan, borderRadius: BorderRadius.circular(20)),
            height: 70,
            width: MediaQuery.of(context).size.height * .8,
            child: ListTile(
              title: const Text("view patients"),
              trailing:
                  const Icon(Icons.medical_information, color: Colors.black),
              onTap: () {
                animatedPush(context, Patients());
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(20)),
              height: 70,
              width: MediaQuery.of(context).size.height * .8,
              child: ListTile(
                title: const Text("Add Patient"),
                trailing: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onTap: () {
                  animatedPush(context, AddPatientScreen());
                },
              ))
        ],
      ),
    );
  }
}

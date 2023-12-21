import 'package:flutter/material.dart';
import 'package:hospital/core/custom%20cubit/rebuild/rebuild_cubit.dart';

import '../core/style/boxdecuration_style.dart';

// ignore: must_be_immutable
class LightTextField extends StatelessWidget {
  LightTextField({
    Key? key,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  String hintText;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.all(8),
      decoration: circularDecoration(
        radius: 25,
        color: Colors.grey[200],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextField(
        style: TextStyle(color: Colors.black.withOpacity(.9)),
        onChanged: (value) {
          RebuildCubit.get(context).search(value);
        },
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: Colors.black.withOpacity(.7),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black.withOpacity(.5),
          ),
        ),
      ),
    );
  }
}

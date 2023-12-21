import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Logo({Key? key, this.padding}) : super(key: key);
  double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 210,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: padding ?? 30),
      child: Image.asset("images/hospital_logo-removebg-preview.png"),
    );
  }
}

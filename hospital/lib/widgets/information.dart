import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  Information({Key? key, required this.title, required this.value})
      : super(key: key);
  String title, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 10),
      child: SizedBox(
        height: 40,
        child: ListTile(
          title: Text(title),
          trailing: SizedBox(
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(value,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

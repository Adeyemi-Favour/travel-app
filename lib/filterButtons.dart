import 'package:flutter/material.dart';

class filterButtons extends StatelessWidget {
  const filterButtons(
      {super.key, required this.placeCategory, required this.buttonColor});

  final String placeCategory;

  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        customBorder: Border.all(width: 1, color: Colors.black),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            placeCategory,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}

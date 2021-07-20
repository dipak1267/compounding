import 'package:compounding/extras/extensioon.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final String lable;
  final Color color;


  const CalculateButton({ required this.color, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQueryHeight(context)/15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Center(
        child:Text(lable),
      ),
    );
  }
}

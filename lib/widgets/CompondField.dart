

import 'package:flutter/material.dart';

class CompoundindField extends StatelessWidget {
  CompoundindField({required this.data, required this.lable});
  var data = TextEditingController();
  String lable;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
          keyboardType: TextInputType.number,
         controller: data,
          decoration: InputDecoration(
            labelText: lable,
            border: OutlineInputBorder(),
          ),
    ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextfiled extends StatelessWidget {
  final String hint;
  const CustomTextfiled({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(decoration: InputDecoration(hintText: hint,border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),);
  }
}
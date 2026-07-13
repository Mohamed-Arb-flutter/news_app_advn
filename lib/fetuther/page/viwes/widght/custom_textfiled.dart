import 'package:flutter/material.dart';

class cusromformfiled extends StatelessWidget {
  const cusromformfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(hintText:'',suffixIcon: Icon(Icons.search),border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),)));
  }
}
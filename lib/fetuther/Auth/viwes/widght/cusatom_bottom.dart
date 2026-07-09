import 'package:flutter/material.dart';

class CusatomBottom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CusatomBottom({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onPressed, child:Text(text));
  }
}
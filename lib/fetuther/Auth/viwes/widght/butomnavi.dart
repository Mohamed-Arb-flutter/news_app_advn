import 'package:flutter/material.dart';


class Butomnavi extends StatelessWidget {
 final int index;
  final String imgee;
  final String text;
 
  const Butomnavi({super.key,required this.imgee,required this.index,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Image.asset(imgee,width: 30,height: 30,color: Colors.black,),Text(text)],) ;
  }
}
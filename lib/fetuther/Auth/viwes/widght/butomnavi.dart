import 'package:flutter/material.dart';


class Butomnavi extends StatelessWidget {
 final int index;
  final String imgee;
  final String text;
  final void Function()? onTap;
  const Butomnavi({super.key,required this.imgee,required this.index,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap:onTap ,child: Column(children: [Image.asset(imgee,width: 30,height: 30,color: Colors.black,),Text(text)],)) ;
  }
}
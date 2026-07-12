import 'package:flutter/material.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_small_card.dart';

class CustomListViwe extends StatelessWidget {
  const CustomListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(scrollDirection: Axis.horizontal,itemCount: 3,itemBuilder:(context,index){return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: CustomSmallCard(),
    );});
  }
}
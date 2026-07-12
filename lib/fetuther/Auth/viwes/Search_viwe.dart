import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_navigate.dart';
import 'package:news_app/fetuther/Auth/viwes/Home_buttom_navi.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/cusatom_bottom.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_textfiled.dart';

class SearchViwe extends StatelessWidget {
  const SearchViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [SizedBox(height: 50,),CustomTextfiled(hint: 'search'),Spacer(flex: 1,),CusatomBottom(text: 'Get Started',onPressed: () {
        AppNavigate.toPUSHReplacement(context,HomeViwe());
      },),SizedBox(height: 10,)],),
    ),);
  }
}
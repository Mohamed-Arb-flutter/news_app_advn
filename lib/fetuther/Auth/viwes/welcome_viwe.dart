import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_navigate.dart';
import 'package:news_app/Core/utlis/App_stile.dart';

import 'package:news_app/fetuther/Auth/viwes/Search_viwe.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/cusatom_bottom.dart';

class WelcomeViwe extends StatelessWidget {
  const WelcomeViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primercolor,
      body: Column(
        children: [
          Container(height: 400,child: Image.asset(AppAssets.home)),
        Expanded(child: Container(height: 400,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16)),color: Colors.white,),child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: Column(children: [SizedBox(height: 20,),Text('Get The Latest News\ntAnd Updates',),SizedBox(height: 10,),Text('From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.'),SizedBox(height: 15,), CusatomBottom(text: "Explore",onPressed: () {
          AppNavigate.toPUSHReplacement(context,SearchViwe());
                },)],),
        ),))
       
      ]),
    );
  }
}

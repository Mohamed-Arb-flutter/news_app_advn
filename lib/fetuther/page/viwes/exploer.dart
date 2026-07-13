import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_navigate.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/Auth/viwes/Search_viwe.dart';

import 'package:news_app/fetuther/page/viwes/widght/card_text.dart';
import 'package:news_app/fetuther/page/viwes/widght/list_bulder.dart';

class Exploer extends StatelessWidget {
  const Exploer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Container(
            height: 100,
            color: AppColor.appbar,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text('Explore',style: AppTextStyle.parex,),
                  Spacer(),
                  IconButton(onPressed: () {AppNavigate.toPUSH(context,SearchViwe());}, icon: Icon(Icons.search)),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Container(
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Text('Travel'),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Text('Technology'),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Text('Business'),
                    ),
                    Spacer()
                  ],
                ),
              ],
            ),
          ),
         SizedBox(height: 10,),
         CardText(),
        //  SizedBox(height: 10,),
          Expanded(child: listbulderitem()),
        ],
      ),
    );
  }
}

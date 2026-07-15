import 'package:flutter/material.dart';

import 'package:news_app/fetuther/page/viwes/widght/custom_textfiled.dart';
import 'package:news_app/fetuther/page/viwes/widght/list_bulder.dart';

class SearchViwe extends StatelessWidget {
  const SearchViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SafeArea(child: Column(children: [Row(
      children: [
        cusromformfiled(),
        ElevatedButton(onPressed:(){Navigator.pop(context);}, child:Text('Cancel'))
      ],
    ),  Row(
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
                  ),SizedBox(height: 10,),listbulderitem(articles: [],)],)),);
  }
}
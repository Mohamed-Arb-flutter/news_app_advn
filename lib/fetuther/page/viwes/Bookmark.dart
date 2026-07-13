import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/page/viwes/widght/list_bulder.dart';

class Fave extends StatelessWidget {
  const Fave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: AppColor.appbar,
            child: Center(child: Text("Bookmark",style: AppTextStyle.parex,)),
          ),
          Expanded(child: listbulderitem()),
        ],
      ),
    );
  }
}

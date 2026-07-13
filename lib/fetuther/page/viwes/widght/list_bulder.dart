import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';
import 'package:news_app/Core/utlis/App_navigate.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/page/viwes/Article.dart';

class listbulderitem extends StatelessWidget {
  const listbulderitem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,itemBuilder: (context,index){return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: GestureDetector(onTap: () {
        AppNavigate.toPUSH(context,Article());
      },child: posts()),
    );});
  }
}

class posts extends StatelessWidget {
  const posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Column(
          children: [
            Text("'Experience the Serenity\n of Japan's Traditional'",style: AppTextStyle.hedl,),
            SizedBox(height: 4,),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/i11.png'),
                  radius: 10,
                ),
                SizedBox(width: 4,),
                Text('2020/5/2    *** 20000',style: TextStyle(color: Colors.grey,fontSize: 14),),
              ],
            ),
          ],
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(AppAssets.test1,height: 90,),
        ),
      ],
    );
  }
}

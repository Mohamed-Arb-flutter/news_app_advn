import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';

class listbulderitem extends StatelessWidget {
  const listbulderitem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,itemBuilder: (context,index){return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: posts(),
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
            Text("'Experience the Serenity\n of Japan's Traditional'"),
            SizedBox(height: 4,),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/i11.png'),
                  radius: 10,
                ),
                SizedBox(width: 4,),
                Text('2020/5/2    *** 20000'),
              ],
            ),
          ],
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(AppAssets.test1,height: 100,),
        ),
      ],
    );
  }
}

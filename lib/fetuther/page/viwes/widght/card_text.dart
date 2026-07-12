import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';

class CardText extends StatelessWidget {
  const CardText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(AppAssets.test,height: 220,),
        ),
          //SizedBox(height: 4),
          Text("Uncovering the Hidden Gems of the Amazon Forest"),
          SizedBox(height: 4),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/i11.png'),
                radius: 10,
              ),
              SizedBox(width: 3,),
              Text("2/11/2520  -  12.222")
            ],
          ),
        ],
      ),
    );
  }
}

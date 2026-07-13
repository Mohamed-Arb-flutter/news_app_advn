import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';

class CustomSmallCard extends StatelessWidget {
  const CustomSmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 150,
   
    child: Column(
      mainAxisSize: MainAxisSize.min, 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            AppAssets.small,
            height: 90, 
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'The Pros and Cons of Remote Work',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:AppTextStyle.card, 
        ),
        const SizedBox(height: 4),
         Text('Technology', style: AppTextStyle.card2),
      ],
    ),
  );
  }
}
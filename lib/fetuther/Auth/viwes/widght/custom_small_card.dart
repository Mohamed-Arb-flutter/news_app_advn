import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';

class CustomSmallCard extends StatelessWidget {
  const CustomSmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 150,
    // إضافة mainAxisSize.min بتمنع الكولوم إنه يحاول ياخد كل الارتفاع المتاح
    child: Column(
      mainAxisSize: MainAxisSize.min, 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            AppAssets.small,
            height: 90, // قللنا الارتفاع 10 بيكسل إضافية عشان ندي مساحة للنصوص
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'The Pros and Cons of Remote Work',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13), // تصغير الخط شوية
        ),
        const SizedBox(height: 4),
        const Text('Technology', style: TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    ),
  );
  }
}
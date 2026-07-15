import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/page/data/model/top_model.dart'; // استيراد موديل المقال[cite: 1]

class CustomCard extends StatelessWidget {
  // 1. تعريف متغير لاستقبال بيانات المقال الفردي
  final ArticleModel article; 

  // 2. تمريره في الـ Constructor كـ required
  const CustomCard({super.key, required this.article}); 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // عرض الصورة من الويب ديناميكياً بدلاً من Image.asset الثابتة
        Container(
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
          child: article.urlToImage != null && article.urlToImage!.isNotEmpty
              ? Image.network(
                  article.urlToImage!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                  ),
                )
              : Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, size: 50, color: Colors.grey),
                ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            // إضافة خلفية متدرجة سوداء خفيفة خلف النص ليكون مقروءاً بوضوح فوق أي صورة[cite: 11]
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.transparent,
                ],
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // عرض اسم الكاتب بدلاً من الكلمة الثابتة 'mohamed'[cite: 11]
                    Expanded(
                      child: Text(
                        article.author ?? 'Unknown Author', 
                        style: AppTextStyle.textimge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 10),
                    // عرض تاريخ النشر الفعلي بدلاً من 'data'[cite: 11]
                    Text(
                      article.publishedAt?.split('T').first ?? '', 
                      style: AppTextStyle.textimge,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                // عرض عنوان الخبر الفعلي بدلاً من 'data' الثانية[cite: 11]
                Text(
                  article.title ?? 'No Title Available', 
                  style: AppTextStyle.textimge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
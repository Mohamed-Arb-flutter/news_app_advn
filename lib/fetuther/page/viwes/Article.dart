import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/page/data/model/top_model.dart'; // استيراد الموديل[cite: 1]

class ArticlePage extends StatelessWidget {
  // 1. استقبال كائن المقال المطلوب عرضه
  final ArticleModel article;

  const ArticlePage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 2. عرض صورة الخبر ديناميكياً من الإنترنت[cite: 2, 12]
          article.urlToImage != null && article.urlToImage!.isNotEmpty
              ? Image.network(
                  article.urlToImage!,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 250,
                    color: Colors.grey[300],
                    child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                  ),
                )
              : Container(
                  height: 250,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, size: 50, color: Colors.grey),
                ),

          // 3. حاوية محتوى تفاصيل الخبر[cite: 12]
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                // تم حذف الـ Expanded الخاطئ واستخدام SingleChildScrollView ليصبح النص قابلاً للتمرير (Scroll)
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // أزرار التحكم (رجوع ومفضلة)[cite: 12]
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back),
                          ),
                          const Spacer(),
                          const Icon(Icons.bookmark_border),
                        ],
                      ),
                      const SizedBox(height: 10),

                      // عنوان الخبر الفعلي[cite: 2, 12]
                      Text(
                        article.title ?? "No Title Available",
                        style: AppTextStyle.hedim,
                      ),
                      const SizedBox(height: 12),

                      // بيانات كاتب وتاريخ نشر الخبر[cite: 2, 12]
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: 12,
                            child: Icon(Icons.person, size: 14, color: Colors.white),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "${article.author ?? 'Unknown Author'}  -  ${article.publishedAt?.split('T').first ?? 'No Date'}",
                              style: const TextStyle(color: Colors.grey, fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // محتوى تفاصيل الخبر الفعلي بدلاً من listviwe الخاطئ[cite: 2, 12]
                      Text(
                        article.content ?? article.description ?? "No content available for this article.",
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
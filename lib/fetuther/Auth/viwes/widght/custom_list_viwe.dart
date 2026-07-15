import 'package:flutter/material.dart';
import 'package:news_app/fetuther/page/data/model/top_model.dart';
import 'package:news_app/fetuther/page/viwes/Article.dart';// قم باستيراد صفحة الـ Article الجديدة

class CustomListViwe extends StatelessWidget {
  final List<ArticleModel> articles;

  const CustomListViwe({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        
        return Card(
          margin: const EdgeInsets.only(bottom: 16.0),
          child: ListTile(
            title: Text(
              article.title ?? 'No Title',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(article.author ?? 'Unknown Author'),
            leading: article.urlToImage != null && article.urlToImage!.isNotEmpty
                ? Image.network(
                    article.urlToImage!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  )
                : const Icon(Icons.image, size: 40),
            
            // --- كود الانتقال لصفحة التفاصيل عند الضغط ---
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticlePage(article: article), // نمرر الخبر المحدد هنا
                ),
              );
            },
          ),
        );
      },
    );
  }
}
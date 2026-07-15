import 'package:flutter/material.dart';
import 'package:news_app/fetuther/page/data/model/top_model.dart';
import 'package:news_app/fetuther/page/viwes/Article.dart';
// قم باستيراد صفحة التفاصيل هنا

class listbulderitem extends StatelessWidget {
  final List<ArticleModel> articles; 

  const listbulderitem({super.key, required this.articles}); 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => 
                        const Icon(Icons.broken_image, size: 40),
                  )
                : const Icon(Icons.image, size: 40),
            
            // --- تفعيل الانتقال لصفحة التفاصيل عند الضغط ---
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticlePage(article: article), // تمرير الخبر هنا
                ),
              );
            },
          ),
        );
      },
    );
  }
}
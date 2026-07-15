import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_navigate.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/page/data/model/top_model.dart';
import 'package:news_app/fetuther/page/viwes/Article.dart';


class CardText extends StatelessWidget {
  final ArticleModel article; 

  const CardText({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
      onTap: () {
       AppNavigate.toPUSH(context, ArticlePage(article: article), );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
              clipBehavior: Clip.antiAlias,
              child: article.urlToImage != null && article.urlToImage!.isNotEmpty
                  ? Image.network(
                      article.urlToImage!,
                      height: 220,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 220,
                        color: Colors.grey[300],
                        child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
                      ),
                    )
                  : Container(
                      height: 220,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image, size: 50, color: Colors.grey),
                    ),
            ),
            const SizedBox(height: 8),
            Text(
              article.title ?? "No Title Available",
              style: AppTextStyle.hedim,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 10,
                  child: Icon(Icons.person, size: 12, color: Colors.white),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    "${article.author ?? 'Unknown Author'}  -  ${article.publishedAt?.split('T').first ?? 'No Date'}",
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
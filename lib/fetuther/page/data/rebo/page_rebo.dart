import 'package:dart_either/dart_either.dart';
import 'package:dio/dio.dart';

import 'package:news_app/fetuther/page/data/model/top_model.dart';

String baseurl =
    'https://newsapi.org/v2/top-headlines?q=we&apiKey=836086f05b344448a16dd41ee51c6320';
Dio dio = Dio();

class PageRebo {
  Future<Either<String,List< ArticleModel>>> top() async {
    try {
      var result = await dio.get('${baseurl}&category=science');
      var mapresponse = result.data as Map<String, dynamic>;
      
      List<dynamic> articlesList = mapresponse['articles'];

     
      List<ArticleModel> articles = articlesList.map((articleJson) {
        return ArticleModel.fromJson(articleJson);
      }).toList();
      return Right(articles);
    } catch (e) {
      return Left(e.toString());
    }
  }
   Future<Either<String,List< ArticleModel>>> every() async {
    try {
      var result = await dio.get(baseurl);
      var mapresponse = result.data as Map<String, dynamic>;
      
      List<dynamic> articlesList = mapresponse['articles'];

     
      List<ArticleModel> articles = articlesList.map((articleJson) {
        return ArticleModel.fromJson(articleJson);
      }).toList();
      return Right(articles);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

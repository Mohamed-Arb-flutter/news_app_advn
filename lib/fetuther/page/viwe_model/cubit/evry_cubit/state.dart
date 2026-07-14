

import 'package:news_app/fetuther/page/data/model/top_model.dart';

class everystate {
  
  
}
class sucseecstate extends everystate{List<ArticleModel>data;sucseecstate({required this.data});}
class erorstate extends everystate{String error;
erorstate({required this.error});}
class lodingstate extends everystate{}
class inithialstate extends everystate{}

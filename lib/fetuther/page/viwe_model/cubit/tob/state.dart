import 'package:news_app/fetuther/page/data/model/top_model.dart';

class tobstate{}
class loadingstate extends tobstate{}
class succsesstate extends tobstate{List<ArticleModel>data;succsesstate({required this.data});}
class errorstate extends tobstate{String error;errorstate({required this.error});}
class inithailstate extends tobstate{}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/fetuther/page/data/rebo/page_rebo.dart';
import 'package:news_app/fetuther/page/viwe_model/cubit/tob/state.dart';

class tob extends Cubit<tobstate> {
  tob(super.initialState);
  PageRebo rebo = PageRebo();
  static tob get(context) => BlocProvider.of(context);
  onprsed() async {
    emit(loadingstate());
    var rsult = await rebo.top();
    rsult.fold(
      ifLeft: (String v) {
        emit(errorstate(error: v));
      },
      ifRight: (value) {
        emit(succsesstate(data: value));
      },
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/fetuther/page/data/rebo/page_rebo.dart';
import 'package:news_app/fetuther/page/viwe_model/cubit/evry_cubit/state.dart';

class everycubit extends Cubit<everystate> {
  everycubit(super.initialState);
  PageRebo rebo = PageRebo();
  static everycubit get(context) => BlocProvider.of(context);
  onprsed() async {
    emit(lodingstate());
    var result = await rebo.every();
    result.fold(
      ifLeft: (String value) {
        emit(erorstate(error: value));
      },
      ifRight: (value) {
        emit(sucseecstate(data: value));
      },
    );
  }
}

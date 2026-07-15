import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/page/viwe_model/cubit/tob/cubit.dart';
import 'package:news_app/fetuther/page/viwe_model/cubit/tob/state.dart';

import 'package:news_app/fetuther/page/viwes/widght/list_bulder.dart';

class Fave extends StatelessWidget {
  const Fave({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => tob(inithailstate())..onprsed(),

      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              color: AppColor.appbar,
              child: Center(child: Text("Bookmark", style: AppTextStyle.parex)),
            ),

            Expanded(
              child: BlocBuilder<tob, tobstate>(
                builder: (context, state) {
                  if (state is loadingstate) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is errorstate) {
                    return Center(child: Text(state.error));
                  } else if (state is succsesstate) {
                    if (state.data.isEmpty) {
                      return const Center(child: Text("No news available"));
                    }

                    final featuredArticle = state.data;

                    

                    return Expanded(
                          child: listbulderitem(articles: featuredArticle),
                        );
                  }

                  return const Center(child: Text("No news available"));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

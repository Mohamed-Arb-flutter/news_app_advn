import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_navigate.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/Auth/viwes/Search_viwe.dart';
import 'package:news_app/fetuther/page/viwes/widght/card_text.dart';
import 'package:news_app/fetuther/page/viwes/widght/list_bulder.dart';


import 'package:news_app/fetuther/page/viwe_model/cubit/tob/cubit.dart';
import 'package:news_app/fetuther/page/viwe_model/cubit/tob/state.dart';

class Exploer extends StatelessWidget {
  const Exploer({super.key});

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text('Explore', style: AppTextStyle.parex),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        AppNavigate.toPUSH(context, SearchViwe());
                      },
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Spacer(),
                  buldtag(label: 'Travel'),
                  const Spacer(),
                  buldtag(label: 'Technology'),
                  const Spacer(),
                  buldtag(label: 'Business'),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 10),

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

                    final featuredArticle = state.data.first;

                    final remainingArticles = state.data.skip(1).toList();

                    return Column(
                      children: [
                        CardText(article: featuredArticle),
                        const SizedBox(height: 10),

                        Expanded(
                          child: listbulderitem(articles: remainingArticles),
                        ),
                      ],
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

class buldtag extends StatelessWidget {
  final String label;
  const buldtag({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Text(label),
    );
    ;
  }
}

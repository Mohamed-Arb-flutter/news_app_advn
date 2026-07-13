import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';

import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_card.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(AppAssets.test1),
          Expanded(
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,

                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back),
                            ),
                            Spacer(),
                            Icon(Icons.bookmark),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Uncovering the Hidden Gems of the Amazon Forest",
                        style: AppTextStyle.hedim,
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/i11.png',
                            ),
                            radius: 10,
                          ),
                          SizedBox(width: 3),
                          Text("2/11/2520  -  12.222"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Expanded(child: listviwe(children: [Text("")]))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

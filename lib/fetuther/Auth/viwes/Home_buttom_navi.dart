import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';

import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/butomnavi.dart';

import 'package:news_app/fetuther/Auth/viwes/widght/custom_card.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_list_viwe.dart';
import 'package:news_app/fetuther/page/viwes/exploer.dart';
import 'package:news_app/fetuther/page/viwes/fave.dart';
import 'package:news_app/fetuther/page/viwes/home_viwe.dart';
import 'package:news_app/fetuther/page/viwes/weather.dart';

class HomeViwe extends StatefulWidget {
  const HomeViwe({super.key});

  @override
  State<HomeViwe> createState() => _HomeViweState();
}

class _HomeViweState extends State<HomeViwe> {
  int index = 0;
  List<Widget> homecrunt = [HomeButtom(), Fave(), Exploer(), Weather()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homecrunt[index],
      // --- Bottom Navigation Bar ---
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        backgroundColor: AppColor.navgait,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
      // استخدمنا Image.asset كـ icon هنا
      icon: Image.asset(AppAssets.homealt, width: 24, height: 24, color: index == 0 ? Colors.blue : Colors.black),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.love, width: 24, height: 24, color: index == 1 ? Colors.blue : Colors.black),
      label: 'Fav',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.earth, width: 24, height: 24, color: index == 2 ? Colors.blue : Colors.black),
      label: 'Earth',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(AppAssets.weather, width: 24, height: 24, color: index == 3 ? Colors.blue : Colors.black),
      label: 'Weather',
    ),
        ],
      ),
    );
  }
}


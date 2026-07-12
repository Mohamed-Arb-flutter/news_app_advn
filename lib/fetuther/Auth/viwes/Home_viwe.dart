import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/butomnavi.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_card.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_list_viwe.dart';
// import 'package:news_app/fetuther/Auth/viwes/widght/custom_small_card.dart'; // غير مستخدم حالياً

class HomeViwe extends StatelessWidget {
  const HomeViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
        child: Column(
          children: [
            // --- Header Section ---
            Container(
              color: AppColor.appbar,
              
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Good Morning,', style: TextStyle(fontSize: 15)),
                  const SizedBox(height: 4), // مسافة صغيرة للتنفس بين النصوص
                  Row(
                    children: [
                      const Text('mohamed ibrahim', style: TextStyle(fontSize: 15)),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(Icons.sunny),
                          const SizedBox(width: 8), // مسافة بين الأيقونة ودرجة الحرارة
                          const Text('Sunny 32oC', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text('Sun 9 April, 2023'),
                ],
              ),
            ),
            
            // --- Main Card ---
            const SizedBox(height: 10),
            const CustomCard(),
      
            // --- Section Title ---
            const SizedBox(height: 24), // مسافة واضحة تفصل بين الأقسام
            const Row(
              children: [
                Text('Most Popular'),
                Spacer(),
                Text('See More'),
               
              ],
            ),
            
            // --- List Section ---
            const SizedBox(height: 16), // مسافة قبل القائمة
            const Expanded(
              child: CustomListViwe(),
            ),
          ],
        ),
      ),
      
      // --- Bottom Navigation Bar ---
      bottomNavigationBar: Container(
        height: 80, 
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), 
            topRight: Radius.circular(24),
          ),
          color: AppColor.navgait,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
           
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Butomnavi(imgee: AppAssets.homealt, index: 1, text: 'Home', onTap: () {  },),
              Butomnavi(imgee: AppAssets.love, index: 1, text: 'fav', onTap: () {  },),
              Butomnavi(imgee: AppAssets.earth, index: 1, text: 'earth', onTap: () {  },),
              Butomnavi(imgee: AppAssets.weather, index: 1, text: 'weather', onTap: () {  },),
            ],
          ),
        ),
      ),
    );
  }
}
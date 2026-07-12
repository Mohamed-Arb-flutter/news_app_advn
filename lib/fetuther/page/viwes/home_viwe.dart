import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_card.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_list_viwe.dart';

class HomeButtom extends StatelessWidget {
  const HomeButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // --- Header Section ---
            Container(
              color: AppColor.appbar,
              // تمت إضافة horizontal: 16 هنا
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Good Morning,', style: TextStyle(fontSize: 15)),
                  const SizedBox(height: 4), 
                  Row(
                    children: [
                      const Text('mohamed ibrahim', style: TextStyle(fontSize: 15)),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(Icons.sunny),
                          const SizedBox(width: 8), 
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
            
            // --- تغليف المحتوى السفلي بـ Expanded ---
            // هذا يخبر فلاتر أن هذا الجزء سيأخذ كل المساحة المتبقية تحت الهيدر
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const CustomCard(),
                          
                    // --- Section Title ---
                    const SizedBox(height: 24), 
                    const Row(
                      children: [
                        Text('Most Popular'),
                        Spacer(),
                        Text('See More'),
                      ],
                    ),
                    
                    // --- List Section ---
                    const SizedBox(height: 16), 
                    // الـ Expanded هنا سيعمل بشكل صحيح لأنه داخل Column محكوم بمساحة الأب
                    const Expanded(
                      child: CustomListViwe(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
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
                   Text('Good Morning,', style:AppTextStyle.AppHome),
                  const SizedBox(height: 4), 
                  Row(
                    children: [
                       Text('mohamed ibrahim', style:AppTextStyle.AppHome),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(Icons.sunny),
                          const SizedBox(width: 8), 
                           Text('Sunny 32oC', style:AppTextStyle.AppHome),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                   Text('Sun 9 April, 2023',style:AppTextStyle.hedwel,),
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
                     Row(
                      children: [
                        Text('Most Popular',style: AppTextStyle.pup,),
                        Spacer(),
                        Text('See More',style: AppTextStyle.see,),
                      ],
                    ),
                    
                    // --- List Section ---
                    const SizedBox(height: 16), 
                  
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
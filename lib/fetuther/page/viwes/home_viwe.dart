import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart'; // لعرض التاريخ الحالي ديناميكياً تلقائياً
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_card.dart';
import 'package:news_app/fetuther/Auth/viwes/widght/custom_list_viwe.dart';
import 'package:news_app/fetuther/page/viwe_model/cubit/evry_cubit/cubit.dart';
import 'package:news_app/fetuther/page/viwe_model/cubit/evry_cubit/state.dart';

class HomeButtom extends StatelessWidget {
  const HomeButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // إنشاء الـ Cubit واستدعاء دالة جلب الأخبار onprsed() فور فتح الصفحة[cite: 3, 4]
      create: (context) => everycubit(inithialstate())..onprsed(), 
      child: Scaffold(
        body: BlocBuilder<everycubit, everystate>(
          builder: (context, state) {
            
            // 1. حالة التحميل[cite: 5]
            if (state is lodingstate) { 
              return const Center(
                child: CircularProgressIndicator(),
              );
            } 
            
            // 2. حالة الخطأ (عرض النص القادم من الـ State)[cite: 5]
            else if (state is erorstate) { 
              return Center(
                child: Text(
                  state.error,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              );
            } 
            
            // 3. حالة النجاح واستلام قائمة المقالات[cite: 5]
            else if (state is sucseecstate) { 
              // في حال كانت قائمة المقالات فارغة
              if (state.data.isEmpty) {
                return const Center(
                  child: Text("No Articles Found"),
                );
              }

              // تقسيم المقالات:
              // المقال الأول يُعرض في الـ CustomCard الرئيسي[cite: 11]
              final featuredArticle = state.data.first;
              // باقي المقالات تُعرض بالأسفل في القائمة[cite: 3]
              final remainingArticles = state.data.skip(1).toList();

              return SafeArea(
                child: Column(
                  children: [
                    // --- الجزء العلوي (Header) ---
                    Container(
                      color: AppColor.appbar,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good Morning,', style: AppTextStyle.AppHome),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                'mohamed ibrahim',
                                style: AppTextStyle.AppHome,
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Icon(Icons.sunny),
                                  const SizedBox(width: 8),
                                  Text('Sunny 32oC', style: AppTextStyle.AppHome),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          // عرض التاريخ الحالي تلقائياً بناءً على تاريخ اليوم الفعلي
                          Text(
                            DateFormat('E d MMMM, y').format(DateTime.now()), 
                            style: AppTextStyle.hedwel,
                          ),
                        ],
                      ),
                    ),

                    // --- محتوى الصفحة (الكرت المميز والـ ListView) ---
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            
                            // تمرير المقال الأول للـ CustomCard[cite: 11]
                            CustomCard(article: featuredArticle),

                            // --- عنوان قسم الأكثر شهرة ---
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                Text('Most Popular', style: AppTextStyle.pup),
                                const Spacer(),
                                Text('See More', style: AppTextStyle.see),
                              ],
                            ),

                            // --- القائمة السفلية لبقية الأخبار ---
                            const SizedBox(height: 16),
                            Expanded(
                              child: CustomListViwe(articles: remainingArticles),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }

            // في حال وجود حالة مبدئية غير معروفة
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
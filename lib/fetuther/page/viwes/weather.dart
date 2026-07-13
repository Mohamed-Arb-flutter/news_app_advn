import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';
import 'package:news_app/Core/utlis/App_color.dart';
import 'package:news_app/Core/utlis/App_text_style.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColor.appbar,
            // تمت إضافة horizontal: 16 هنا
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                const Text('Good Morning,', style: TextStyle(fontSize: 15)),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text(
                      'mohamed ibrahim',
                      style: TextStyle(fontSize: 15),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.sunny),
                        const SizedBox(width: 8),
                        const Text(
                          'Sunny 32oC',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text('Sun 9 April, 2023'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text("Cairo - EG", style: AppTextStyle.we),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("27", style: AppTextStyle.we),
                    SizedBox(width: 250),
                    Icon(Icons.sunny),
                  ],
                ),
                SizedBox(height: 10),
                Text("Clear - Clear Sky", style: AppTextStyle.we),
                SizedBox(height: 10),
                Text("Feels like 28", style: AppTextStyle.un),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(AppAssets.temp),
                    Column(
                      children: [
                        Text('70',style: AppTextStyle.de),
                        Text('Fahrenheit', style: AppTextStyle.tem),
                      ],
                    ),
                    Spacer(),
                    Image.asset(AppAssets.windy),
                    Column(
                      children: [
                        Text('134 mp/h', style: AppTextStyle.de),
                        Text('Pressure', style: AppTextStyle.tem),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(AppAssets.sunny),
                    Column(
                      children: [
                        Text('0.2',style: AppTextStyle.de),
                        Text('UV Index', style: AppTextStyle.tem),
                      ],
                    ),
                    Spacer(),
                    Image.asset(AppAssets.hail),
                    Column(
                      children: [
                        Text('48%',style: AppTextStyle.de),
                        Text('Humidity', style: AppTextStyle.tem),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

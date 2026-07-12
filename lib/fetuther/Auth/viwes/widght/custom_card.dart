import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(AppAssets.test,height: 220,),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('mohamed', style: TextStyle(color: Colors.white)),
                      Spacer(flex: 1),
                      Text('data', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Text('data', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class listviwe extends StatelessWidget {
  const listviwe({super.key, required List<Widget> children});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CustomCard();
      },
    );
  }
}

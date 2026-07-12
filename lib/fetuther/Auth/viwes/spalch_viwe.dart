import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/Core/utlis/App_assets.dart';
import 'package:news_app/Core/utlis/App_navigate.dart';
import 'package:news_app/Core/utlis/App_stile.dart';
import 'package:news_app/fetuther/Auth/viwes/welcome_viwe.dart';

class splach_viwe extends StatefulWidget {
  const splach_viwe({super.key});

  @override
  State<splach_viwe> createState() => _splach_viweState();
}

class _splach_viweState extends State<splach_viwe> {
  void initState() {
    super.initState();
    {
      Timer(Duration(seconds: 2), () {
        AppNavigate.toPUSHReplacement(context, const WelcomeViwe());
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Khab",style: AppStile.splasch,),Image.asset(AppAssets.paper),Text('r',style: AppStile.splasch,)],)),);
  }
}

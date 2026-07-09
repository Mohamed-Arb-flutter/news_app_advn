import 'package:flutter/material.dart';
import 'package:news_app/fetuther/Auth/viwes/spalch_viwe.dart';

void main() {
  runApp(const newsApp());
}
class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splach_viwe(),);
  }
}
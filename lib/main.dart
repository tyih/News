import 'package:flutter/material.dart';
import 'package:news/screens/tabbar/tabbar.dart';
import 'package:news/theme.dart';
import 'package:news/routes.dart';

void main() => runApp(const NewsApp());

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News',
      theme: appTheme(),
      routes: routes,
      home: const NewsTabbarScreen(),
    );
  }
}

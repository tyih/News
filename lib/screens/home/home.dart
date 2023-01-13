import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  static String route() => '/home';

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'))
    );
  }
}

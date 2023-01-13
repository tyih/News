import 'package:flutter/material.dart';
import 'package:news/screens/home/home.dart';
import 'package:news/screens/video/video.dart';
import 'package:news/screens/profile/profile.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.route(): (context) => const HomeScreen(title: 'home'),
  VideoScreen.route(): (context) => const ProfileScreen(),
  ProfileScreen.route(): (context) => const ProfileScreen()
};
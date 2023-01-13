import 'package:flutter/material.dart';
import 'package:news/screens/home/home.dart';
import 'package:news/screens/profile/profile.dart';
import 'package:news/screens/video/video.dart';
import 'package:news/utils/image_loader.dart';
import 'package:news/utils/size_config.dart';

class TabbarItem {
  final String lightIcon;
  final String boldIcon;
  final String label;

  TabbarItem(
      {required this.lightIcon, required this.boldIcon, required this.label});

  BottomNavigationBarItem item(bool isbold) {
    return BottomNavigationBarItem(
        icon: ImageLoader.imageAsset(isbold ? boldIcon : lightIcon),
        label: label);
  }

  BottomNavigationBarItem get light => item(false);

  BottomNavigationBarItem get bold => item(true);
}

class NewsTabbarScreen extends StatefulWidget {
  const NewsTabbarScreen({super.key});

  @override
  State<NewsTabbarScreen> createState() => _NewsTabbarScreenState();
}

class _NewsTabbarScreenState extends State<NewsTabbarScreen> {
  int _select = 0;

  final screens = [
    const HomeScreen(title: "首页"),
    const VideoScreen(),
    const ProfileScreen()
  ];

  static Image generateIcon(String path) {
    return Image.asset('${ImageLoader.rootPath}tabbar/$path',
        width: 24, height: 24);
  }

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: generateIcon('light/shouye.png'),
        activeIcon: generateIcon('bold/shouye.png'),
        label: '首页'),
    BottomNavigationBarItem(
        icon: generateIcon('light/shipin.png'),
        activeIcon: generateIcon('bold/shipin.png'),
        label: '视频'),
    BottomNavigationBarItem(
        icon: generateIcon('light/wode.png'),
        activeIcon: generateIcon('bold/wode.png'),
        label: '我的')
  ];

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: screens[_select],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        onTap: ((value) => setState(() => _select = value)),
        currentIndex: _select,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10
        ),
        selectedItemColor: const Color(0xFF212121),
        unselectedItemColor: const Color(0xFF9E9E9E),
      ),
    );
  }
}

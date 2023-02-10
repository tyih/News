import 'package:flutter/material.dart';
import 'package:news/screens/home/home_subpage.dart';
import 'package:news/screens/home/search_field.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  static String route() => '/home';

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List tabs = ['关注', '推荐', "热榜", "要闻", "新时代", "抗疫", "免费小说", "热点"];
  List<HomeSubpage> pages = [];
  List<Tab> tabViews = [];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController.addListener(() {
      tabController.index;
    });

    for (int i = 0; i < tabs.length; i++) {
      pages.add(const HomeSubpage());
      tabViews.add(Tab(text: tabs[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              height: 85,
              padding: const EdgeInsets.only(left: 16, bottom: 5, right: 16),
              child: const SearchField(),
            ),
            Container(
              margin: const EdgeInsets.only(top: 130),
              child: TabBarView(
                controller: tabController,
                children: pages,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 85),
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black87,
                indicatorColor: Colors.red,
                tabs: tabViews,
              ),
            )
          ],
        ));
  }
}

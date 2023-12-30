import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/bottom_navigation.dart';
import 'package:flutter_application_1/pages/point_list_pgae.dart';
import 'package:flutter_application_1/pages/watch_video_page.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key, required this.title});

  final String title;

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<BottomNavigationEntity> navigationList = [
    BottomNavigationEntity(
        title: 'ポイント獲得',
        icon: Icons.control_point_duplicate,
        page: PointListPage()),
    BottomNavigationEntity(
        title: 'ブースト', icon: Icons.trending_up, page: const WatchVideoPage()),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationList[selectedIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        items: navigationList
            .map((item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.title,
                ))
            .toList(),
      ),
    );
  }
}

import 'package:demo/pages/Card.dart';
import 'package:demo/pages/Catgory.dart';
import 'package:demo/pages/Home.dart';
import 'package:demo/pages/Mine.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _current_index = 0;

  // 页面对应着 _current_index
  List<Widget> _getPages() {
    return [HomePage(), CatgoryPage(), CardPage(), MinePage()];
  }

  // 定义底部导航信息
  List<Map<String, String>> bottom_items = [
    {
      "icon": "lib/assets/ic_public_home_normal.png",
      "active_icon": "lib/assets/ic_public_home_active.png",
      "text": "首页",
    },
    {
      "icon": "lib/assets/ic_public_pro_normal.png",
      "active_icon": "lib/assets/ic_public_pro_active.png",
      "text": "分类",
    },
    {
      "icon": "lib/assets/ic_public_cart_normal.png",
      "active_icon": "lib/assets/ic_public_cart_active.png",
      "text": "购物车",
    },
    {
      "icon": "lib/assets/ic_public_my_normal.png",
      "active_icon": "lib/assets/ic_public_my_active.png",
      "text": "我的",
    },
  ];

  List<BottomNavigationBarItem> getBottomItem() {
    return List.generate(bottom_items.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(bottom_items[index]['icon']!, width: 24, height: 24),
        activeIcon: Image.asset(
          bottom_items[index]['active_icon']!,
          width: 24,
          height: 24,
        ),
        label: bottom_items[index]['text'],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(children: _getPages(), index: _current_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: getBottomItem(),
        currentIndex: _current_index,
        onTap: (index) {
          _current_index = index;
          setState(() {});
        },
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
      ),
    );
  }
}

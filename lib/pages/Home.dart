import 'package:demo/components/catgory.dart';
import 'package:demo/components/hot.dart';
import 'package:demo/components/morelist.dart';
import 'package:demo/components/slider.dart';
import 'package:demo/components/suggestion.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 主页滚动图数据
  List<Map<String, String>> slider_items = [
    {"url": "lib/assets/banner1.png", "id": "1"},
    {"url": "lib/assets/banner2.png", "id": "2"},
    {"url": "lib/assets/banner3.png", "id": "3"},
  ];

  List<Widget> _getSliverItems() {
    return [
      // 主页滚动图
      SliverToBoxAdapter(child: homeSlider(slider_items: slider_items)),
      SliverToBoxAdapter(child: SizedBox(height: 10)),

      // 主页分类
      SliverToBoxAdapter(child: homeCatgory()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),

      // 主页推荐
      SliverToBoxAdapter(child: homeSuggestion()),
      SliverToBoxAdapter(child: SizedBox(height: 10)),

      // 主页热门
      SliverToBoxAdapter(
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(child: homeHot()),
            SizedBox(width: 10),
            Expanded(child: homeHot()),
          ],
        ),
      ),
      SliverToBoxAdapter(child: SizedBox(height: 10)),

      // 主页无限滚动
      SliverToBoxAdapter(child: moreList()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getSliverItems());
  }
}

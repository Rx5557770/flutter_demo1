import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class homeSlider extends StatefulWidget {
  final List<Map<String, String>> slider_items;
  const homeSlider({super.key, required this.slider_items});

  @override
  State<homeSlider> createState() => _homeSliderState();
}

class _homeSliderState extends State<homeSlider> {
  CarouselSliderController _controller = CarouselSliderController(); // 轮播图控制器
  int _currentIndex = 0;
  // 主页滚动图
  Widget _bannerItems() {
    // 视口宽高
    final Size size = MediaQuery.of(context).size;
    return CarouselSlider(
      carouselController: _controller, // 绑定控制器
      items: List.generate(widget.slider_items.length, (int index) {
        return Image.asset(
          widget.slider_items[index]["url"]!,
          width: size.width,
          fit: BoxFit.cover,
        );
      }),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 3),
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  // 搜索
  Widget _searchBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(230, 222, 222, 0.498),
          ),
          child: TextField(decoration: InputDecoration(hintText: "搜索")),
        ),
      ),
    );
  }

  // 滚动条
  Widget _rollDot() {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.slider_items.length, (int index) {
            return GestureDetector(
              onTap: () {
                _controller.animateToPage(
                  index,
                  duration: Duration(milliseconds: 350),
                );
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: _currentIndex == index ? 75 : 25,
                height: 5,
                decoration: BoxDecoration(
                  color: _currentIndex == index
                      ? const Color.fromARGB(255, 80, 148, 204)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_bannerItems(), _searchBar(), _rollDot()]);
  }
}

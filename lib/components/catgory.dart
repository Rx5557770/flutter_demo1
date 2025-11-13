import 'package:flutter/material.dart';

class homeCatgory extends StatefulWidget {
  const homeCatgory({super.key});

  @override
  State<homeCatgory> createState() => _homeCatgoryState();
}

class _homeCatgoryState extends State<homeCatgory> {
  // 主页分类items
  Widget _getItems() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(width: 10),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          color: Colors.blueGrey,
          child: Text(index.toString()),
          width: 56,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 80, child: _getItems());
  }
}

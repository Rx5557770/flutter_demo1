import 'package:flutter/material.dart';

class moreList extends StatefulWidget {
  const moreList({super.key});

  @override
  State<moreList> createState() => _moreListState();
}

class _moreListState extends State<moreList> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 300, color: Colors.blue, child: Text("morelist"));
  }
}

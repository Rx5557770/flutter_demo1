import 'package:flutter/material.dart';

class homeHot extends StatefulWidget {
  const homeHot({super.key});

  @override
  State<homeHot> createState() => _homeHotState();
}

class _homeHotState extends State<homeHot> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 150, color: Colors.blue, child: Text("homehot"));
  }
}

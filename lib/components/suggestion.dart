import 'package:flutter/material.dart';

class homeSuggestion extends StatefulWidget {
  const homeSuggestion({super.key});

  @override
  State<homeSuggestion> createState() => _homeSuggestionState();
}

class _homeSuggestionState extends State<homeSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      color: Colors.blue,
      child: Text("homesuggestion"),
    );
  }
}

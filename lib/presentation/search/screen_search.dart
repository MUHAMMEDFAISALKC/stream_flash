import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Center(
          child: Text(
        'Screen of Search',
        style: TextStyle(fontSize: 30),
      )),
    ));
  }
}
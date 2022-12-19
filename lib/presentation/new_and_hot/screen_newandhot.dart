import 'package:flutter/material.dart';
import 'package:stream_flash/core/colors/colors.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Text(
          'Screen of New and Hot',
          style: TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}

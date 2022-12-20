import 'package:flutter/material.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarCommon()),
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

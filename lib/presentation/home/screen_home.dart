import 'package:flutter/material.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarCommon()),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Center(
                    child: Text(
              'STREAM FLASH\n Home Screen',
              style: TextStyle(fontSize: 30),
            ))),
          ],
        ),
      ),
    );
  }
}

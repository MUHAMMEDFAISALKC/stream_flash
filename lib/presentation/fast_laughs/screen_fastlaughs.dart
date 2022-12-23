import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stream_flash/presentation/fast_laughs/widgets/video_list_item.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: AppBarCommon()),
        body: SafeArea(
            child: PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  20,
                  (index) => VideoListItem(index: index),
                ))));
  }
}

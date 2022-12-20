import 'package:flutter/material.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/presentation/downloads/screen_downloads.dart';
import 'package:stream_flash/presentation/fast_laughs/screen_fastlaughs.dart';
import 'package:stream_flash/presentation/home/screen_home.dart';
import 'package:stream_flash/presentation/main_page/widgets/bottom_nav.dart';
import 'package:stream_flash/presentation/new_and_hot/screen_newandhot.dart';
import 'package:stream_flash/presentation/search/screen_search.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (context, newIndex, child) {
            return _pages[newIndex];
          }),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}

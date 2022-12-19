import 'package:flutter/material.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/presentation/downloads/screen_downloads.dart';
import 'package:stream_flash/presentation/fast_laughs/screen_fastlaughs.dart';
import 'package:stream_flash/presentation/home/screen_home.dart';
import 'package:stream_flash/presentation/main_page/widgets/bottom_nav.dart';
import 'package:stream_flash/presentation/new_and_hot/screen_newandhot.dart';
import 'package:stream_flash/presentation/search/screen_search.dart';

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
      appBar: AppBar(
        shadowColor: Colors.white,
        title: Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset(
                'assets/images/StreamFlash.png',
                //width: 35,
                height: 40,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text('Stream flash'.toUpperCase()),
              ),
            ])),
        backgroundColor: Colors.black,
      ),
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

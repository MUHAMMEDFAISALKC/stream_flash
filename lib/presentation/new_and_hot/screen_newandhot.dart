import 'dart:js';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/home/widgets/custom_button.dart';
import 'package:stream_flash/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:stream_flash/presentation/new_and_hot/widgets/everyones_watching.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';
import 'package:stream_flash/presentation/widgets/app_bar_widget.dart';
import 'package:stream_flash/presentation/widgets/video_widget.dart';

//late TabController NewHotController;

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    //NewHotController = TabController(length: 2, vsync: this);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWidget(
              title: 'New & Hot',
              bottomTap: TabBar(
                padding: EdgeInsets.only(top: 10),
                //controller: NewHotController,
                tabs: [Text('e Coming Soon'), Text("👀 Everyone's Watching")],
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                labelColor: Colors.black,
                labelPadding: EdgeInsets.all(5),
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.blue,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                //isScrollable: true,
              ),
            )),
        body: SafeArea(child: TabBarView(
            //controller: NewHotController,
            children: [_comingSoonTab(), _everyOnesWatching(context)])),
      ),
    );
  }

  Widget _comingSoonTab() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CommingSoonWidget();
        });
  }

  Widget _everyOnesWatching(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return EveryonesWatchingWIdget();
        });
  }
}

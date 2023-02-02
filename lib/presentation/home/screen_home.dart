import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/home/widgets/background_card.dart';
import 'package:stream_flash/presentation/home/widgets/custom_button.dart';
import 'package:stream_flash/presentation/home/widgets/home_app_bar.dart';
import 'package:stream_flash/presentation/home/widgets/number_card.dart';
import 'package:stream_flash/presentation/home/widgets/number_title_card.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';
import 'package:stream_flash/presentation/widgets/main_card.dart';
import 'package:stream_flash/presentation/widgets/main_title.dart';
import 'package:stream_flash/presentation/widgets/main_title_card.dart';
import 'package:video_player/video_player.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: PreferredSize(
        //     preferredSize: Size.fromHeight(50), child: AppBarCommon()),
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (context, value, child) {
              return SafeArea(
                child: NotificationListener<UserScrollNotification>(
                    onNotification: (notification) {
                      final ScrollDirection direction = notification.direction;
                      if (direction == ScrollDirection.reverse) {
                        scrollNotifier.value = false;
                      } else if (direction == ScrollDirection.forward) {
                        scrollNotifier.value = true;
                      }
                      return true;
                    },
                    child: Stack(
                      children: [
                        ListView(
                          children: [
                            BackgroundCard(),
                            heightBox,
                            MainTitleCard(
                              title: 'Released in the Past Year',
                            ),
                            heightBox,
                            MainTitleCard(title: 'Trending Now'),
                            heightBox,
                            NumberTitleCard(
                                title: "Top 10 TV Shows in India Today"),
                            heightBox,
                            MainTitleCard(
                              title: 'Tense Dramas',
                            ),
                            heightBox,
                            MainTitleCard(title: 'South Indian Cinimas')
                          ],
                        ),
                        (scrollNotifier.value == true)
                            ? Container(
                                height: 100,
                                width: double.infinity,
                                color: Colors.black.withOpacity(0.5),
                                child: Column(
                                  children: [
                                    HomeAppBarWidget(
                                      title: 'STREAM FLASH',
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'TV Shows',
                                              style:
                                                  TextStyle(color: textcolor),
                                            )),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Movies',
                                              style:
                                                  TextStyle(color: textcolor),
                                            )),
                                        TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Categories',
                                                  style: TextStyle(
                                                      color: textcolor),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: iconcolor,
                                                )
                                              ],
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            : heightBox
                      ],
                    )),
              );
            }));
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        color: Colors.black,
      ),
      label: Text(
        'Play',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

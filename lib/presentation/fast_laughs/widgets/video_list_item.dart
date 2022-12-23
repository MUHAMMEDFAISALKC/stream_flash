import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stream_flash/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      Container(
        //color: Colors.accents[index % Colors.accents.length]
        decoration: BoxDecoration(
            color: Colors.accents[index % Colors.accents.length],
            image: DecorationImage(
                image: AssetImage('assets/images/lordOfRings.jpg'))),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.volume_off),
                color: iconcolor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/spiderman.jpg'),
                    // backgroundImage: NetworkImage(
                    //     'https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg'),
                  ),
                ),
                VideoActionsWidget(
                  icon: Icon(Icons.emoji_emotions),
                  title: 'LOL',
                ),
                VideoActionsWidget(
                  icon: Icon(Icons.add),
                  title: 'My List',
                ),
                VideoActionsWidget(
                  icon: Transform.rotate(
                      angle: -40 * pi / 180, child: Icon(Icons.send)),
                  title: 'Share',
                ),
                VideoActionsWidget(
                  icon: Icon(Icons.play_arrow),
                  title: 'Play',
                ),
              ],
            ),
          )
        ],
      )
    ]);
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget(
      {super.key, required this.icon, required this.title});

  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      child: Column(
        children: [icon, Text(title)],
      ),
    );
  }
}

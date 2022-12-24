import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/home/widgets/custom_button.dart';
import 'package:stream_flash/presentation/widgets/video_widget.dart';

class EveryonesWatchingWIdget extends StatelessWidget {
  const EveryonesWatchingWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heightBox,
          Text(
            "Friends",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          heightBox,
          Text(
            "This hit sitcom follows the merry misadventures of six 20-something pols as they navigate the pitfails of work, life and love in 1990's ManHaltan.",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          heightBox20,
          VideoWidget(urlImage: 'assets/images/watch.jpg'),
          heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lost in Space',
                style: TextStyle(
                    letterSpacing: -2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  CustomButton(
                      icon: Transform.rotate(
                          angle: -40 * pi / 180, child: Icon(Icons.send)),
                      title: 'Share'),
                  widthBox20,
                  CustomButton(icon: Icon(Icons.add), title: 'My LIST'),
                  widthBox30,
                  CustomButton(icon: Icon(Icons.play_arrow), title: 'Play'),
                  widthBox30,
                ],
              ),
            ],
          ),
          heightBox,
          Text(
            "Lost In Space",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          heightBox,
          Text(
            'After crash-landing on an alien planet, the Robinson family fights against all odds to survive and escape',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          heightBox,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stream_flash/presentation/home/screen_home.dart';
import 'package:stream_flash/presentation/home/widgets/custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          //color: Color.fromARGB(255, 6, 103, 120),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('images/lordOfRings.jpg'))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  icon: Icon(Icons.add),
                  title: 'My List',
                ),
                PlayButton(),
                CustomButton(
                  icon: Icon(Icons.info_outline_rounded),
                  title: 'Info',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

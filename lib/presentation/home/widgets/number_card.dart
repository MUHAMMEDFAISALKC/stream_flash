import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 140,
              width: 30,
            ),
            Container(
                alignment: Alignment.centerLeft,
                width: 100,
                height: 140,
                color: Colors.accents[index % Colors.accents.length]
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: NetworkImage(
                //             'https://www.themoviedb.org/t/p/w440_and_h660_face/4x3pt6hoLblBeHebUa4OyiVXFiM.jpg'))),
                ),
          ],
        ),
        Positioned(
          bottom: -15,
          left: 10,
          child: BorderedText(
            strokeWidth: 2,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                color: Colors.black,
                //decorationStyle: TextDecorationStyle.solid,
                //decorationThickness: 10,
                decoration: TextDecoration.none,
                //decorationColor: Colors.white,
                fontSize: 90,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}

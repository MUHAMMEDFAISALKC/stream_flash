import 'package:flutter/material.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/home/widgets/number_card.dart';
import 'package:stream_flash/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(children: [
        MainTitle(sTitle: title),
        heightBox20,
        LimitedBox(
            maxHeight: 140,
            //maxWidth: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return NumberCard(index: index);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemCount: 30)),
      ]),
    );
  }
}

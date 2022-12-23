import 'package:flutter/material.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/widgets/main_card.dart';
import 'package:stream_flash/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(children: [
        MainTitle(sTitle: title),
        heightBox20,
        LimitedBox(
            maxHeight: 140,
            //maxWidth: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MainCard(index: index);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemCount: 30)),
      ]),
    );
  }
}

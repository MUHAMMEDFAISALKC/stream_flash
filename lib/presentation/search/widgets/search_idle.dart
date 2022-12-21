import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stream_flash/core/colors/colors.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/search/widgets/search_title.dart';

class SearchIdle extends StatelessWidget {
  SearchIdle({super.key});

  final imageUrls = [
    'https://www.themoviedb.org/t/p/w710_and_h400_multi_faces/y2Ca1neKke2mGPMaHzlCNDVZqsK.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchTitle(sTitle: 'Top Searches'),
          heightBox,
          Expanded(
            child: (imageUrls != null)
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      return TopSearchItemTile(
                        imageUrl: imageUrls[0],
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return heightBox20;
                    },
                    itemCount: 2)
                : Center(child: Text('No Images')),
          )
        ],
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key, required this.imageUrl, this.index});

  final String imageUrl;
  final int? index;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 70,
          width: screenSize.width * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          )),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Movie Name $index',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )),
        Icon(
          Icons.play_circle_outline_rounded,
          size: 35,
        )
      ],
    );
  }
}

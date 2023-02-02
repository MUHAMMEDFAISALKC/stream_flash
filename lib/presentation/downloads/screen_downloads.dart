import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_flash/application/downloads/download_bloc.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/core/strings.dart';
import 'package:stream_flash/presentation/widgets/app_bar_widget.dart';

import '../../infrastructure/downloads/download_repository.dart';

//final TMDB_API = String.fromEnvironment(TMDB_API);

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _wedgets = [
    Section1(),
    SizedBox(
      height: 40,
    ),
    Section2(),
    Section3(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return _wedgets[index];
                  }),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: _wedgets.length))),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Smart Downloads',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  /*
  List imageLists = [
    'https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg', //?api_key=$TMDB_API',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg', //?api_key=$TMDB_API',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg', //?api_key=$TMDB_API'
  ];
  */

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadBloc>(context)
          .add(DownloadEvent.getDownloadImages());
    });
    final screanDime = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Introducing Downloads for you',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        heightBox,
        Text(
          "We'll download a personalised selection of movies and shows for you, so there's always something to watch on your device.",
          style: TextStyle(color: Colors.grey, fontSize: 17),
          textAlign: TextAlign.center,
        ),
        BlocBuilder<DownloadBloc, DownloadState>(
          builder: (context, state) {
            return Container(
              width: screanDime.width,
              height: screanDime.width - 20,

              //color: Colors.white,

              child: 
              
              (state.isLoading)
                  ? CircularProgressIndicator()
                  : (state.downloads!.isNotEmpty) ? 
                  Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                            child: CircleAvatar(
                          radius: screanDime.width * 0.4,
                          //maxRadius: 200,
                          backgroundColor: Color.fromARGB(115, 134, 130, 130),
                        )),
                        DownloadImagesWidget(
                          margin: EdgeInsets.only(left: 170),
                          rotationDegree: 18,
                          screanDime: screanDime,
                          imageList:
                              '${imageAppendUrl}${state.downloads![0].posterPath}',
                          imHeight: (screanDime.width * 0.52),
                        ),
                        DownloadImagesWidget(
                            margin: EdgeInsets.only(right: 170),
                            imHeight: (screanDime.width * 0.52),
                            rotationDegree: -18,
                            screanDime: screanDime,
                            imageList:
                                '${imageAppendUrl}${state.downloads![1].posterPath}'),
                        DownloadImagesWidget(
                            radiusBorder: 60,
                            margin: EdgeInsets.only(top: 40),
                            imHeight: (screanDime.width * 0.8),
                            screanDime: screanDime,
                            imageList:
                                '${imageAppendUrl}${state.downloads![2].posterPath}'),
                      ],
                    ): CircularProgressIndicator(),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          color: Colors.blue,
          minWidth: 200,
          onPressed: () {},
          child: Text(
            'Set Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {},
            child: Text(
              'See What You Can Downdload',
              style: TextStyle(
                color: Colors.black,
                //fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white)))
      ],
    );
  }
}

class DownloadImagesWidget extends StatelessWidget {
  const DownloadImagesWidget({
    Key? key,
    required this.screanDime,
    this.rotationDegree = 0,
    required this.imageList,
    required this.margin,
    required this.imHeight,
    this.radiusBorder = 15,
  }) : super(
          key: key,
        );

  final Size screanDime;
  final int rotationDegree;
  final String imageList;
  final EdgeInsets margin;
  final double imHeight;
  final double radiusBorder;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationDegree * pi / 180,
      child: Container(
        margin: margin,
        width: screanDime.width * 0.38,
        height: imHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radiusBorder),
            image: DecorationImage(image: NetworkImage(imageList))),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stream_flash/presentation/search/widgets/search_title.dart';

class SearchResultWidget extends StatelessWidget {
  SearchResultWidget({super.key});

  List imageLists = [
    'https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg', //?api_key=$TMDB_API',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg', //?api_key=$TMDB_API',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg', //?api_key=$TMDB_API'
    'https://www.themoviedb.org/t/p/w440_and_h660_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg', //?api_key=$TMDB_API',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTitle(sTitle: 'Movies & TV'),
        Expanded(
            child: GridView.count(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 3,
                children: (imageLists != null)
                    ? List.generate(
                        5,
                        (index) => Container(
                              //height: 100,
                              //width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        imageLists[index],
                                      ),
                                      fit: BoxFit.cover)),
                            ))
                    : [Center(child: Text('No Images'))]))
      ],
    );
  }
}

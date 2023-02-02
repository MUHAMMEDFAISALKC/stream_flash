import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_flash/application/search/search_bloc.dart';
import 'package:stream_flash/core/strings.dart';
import 'package:stream_flash/presentation/search/widgets/search_title.dart';

class SearchResultWidget extends StatelessWidget {
  SearchResultWidget({super.key});

  List imageLists = [
    'https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg', //?api_key=$TMDB_API',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg', //?api_key=$TMDB_API',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg', //?api_key=$TMDB_API'
    'https://www.themoviedb.org/t/p/w440_and_h660_face/lJA2RCMfsWoskqlQhXPSLFQGXEJ.jpg', //?api_key=$TMDB_API',
  ];

/*
WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(SearchEvent.searchMovie(movieQuery: query));
     });
    */

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        SearchTitle(sTitle: 'Movies & TV'),
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 3,
                children: (state.searchResultList != null)
                    ? List.generate(
                        state.searchResultList.length,
                        (index) => 
                        (state.searchResultList[index].posterPath != null) ?
                        Container(
                              //height: 100,
                              //width: 50,
                              
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        '${imageAppendUrl}${state.searchResultList[index].posterPath}',
                                      ),
                                      fit: BoxFit.cover)),
                            ): Container(
                              //height: 100,
                              //width: 50,
                              
                              color: Colors.accents[index % Colors.accents.length],
                            )

                            )
                    : [Center(child: Text('No Images'))]);
          },
        ))
      ],
    );
  }
}

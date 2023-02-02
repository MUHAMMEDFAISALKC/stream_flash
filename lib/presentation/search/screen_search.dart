import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_flash/application/search/search_bloc.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/domain/core/debounce/debounce.dart';
import 'package:stream_flash/presentation/search/widgets/search_idle.dart';
import 'package:stream_flash/presentation/search/widgets/search_result.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final searchTextController = TextEditingController();

  final _debouncer = Debouncer(milliseconds: 500);


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(Initialize());
    });
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: AppBarCommon()),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                controller: searchTextController,
                autofocus: true,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    //border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadiusDirectional.circular(20)),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 20, left: 10),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                ),
                
                onChanged: (value) {
                  _debouncer.run(() {
                    if (value.length >0) 
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(movieQuery: value));
                   });
                },
                
                placeholder: 'Search for your favourate movie',
                style: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
              ),
              heightBox,
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state.searchResultList.isEmpty) {
                      return SearchIdle();
                    }
                    return SearchResultWidget();
                  },
                ),
              )
            ],
          ),
        )));
  }
}
